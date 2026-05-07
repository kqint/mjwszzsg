.class public Lcn/cmgame/billing/ui/OpeningAnimation;
.super Landroid/view/View;
.source "OpeningAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/ui/OpeningAnimation$a;
    }
.end annotation


# static fields
.field public static final HDPI_HEIGHT:I = 0x320

.field public static final HDPI_WIDTH:I = 0x1e0

.field static eU:Z = false

.field private static final ea:Ljava/lang/String; = "android.intent.action.CHINAMOBILE_OMS_GAME"

.field private static final eb:Ljava/lang/String; = "android.intent.category.CHINAMOBILE_GAMES"

.field private static final ec:I = 0x0

.field private static final ed:I = 0x1

.field private static final ee:I = 0x2

.field private static final ef:I = 0x3

.field private static final eg:I = 0x0

.field private static final eh:I = 0x1

.field private static final ei:I = 0x2

.field private static final ej:I = 0x3

.field private static final ek:I = 0x14

.field private static final el:J = 0x55L

.field private static final em:I = -0x15

.field private static final en:I = -0x16

.field public static sIsMusicOn:Z


# instance fields
.field private eA:[Lcn/cmgame/billing/util/e;

.field private eB:Lcn/cmgame/billing/util/e;

.field private eC:Lcn/cmgame/billing/util/e;

.field private eD:Landroid/graphics/Bitmap;

.field private eE:Lcn/cmgame/billing/util/d;

.field private eF:Landroid/media/MediaPlayer;

.field private eG:I

.field private eH:I

.field private eI:I

.field private eJ:I

.field private eK:I

.field private eL:I

.field private eM:I

.field private eN:I

.field private eO:Landroid/app/Activity;

.field private eP:Landroid/content/res/Resources;

.field private eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

.field private eR:Z

.field private eS:Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;

.field private eT:[[I

.field private eo:Z

.field private ep:Z

.field private eq:Z

.field private er:[Lcn/cmgame/billing/util/e;

.field private es:Lcn/cmgame/billing/util/e;

.field private et:Lcn/cmgame/billing/util/e;

.field private eu:Lcn/cmgame/billing/util/e;

.field private ev:Lcn/cmgame/billing/util/e;

.field private ew:Lcn/cmgame/billing/util/e;

.field private ex:Lcn/cmgame/billing/util/e;

.field private ey:Lcn/cmgame/billing/util/e;

.field private ez:Lcn/cmgame/billing/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->sIsMusicOn:Z

    .line 375
    sput-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->eU:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    .line 78
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 80
    iput v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    .line 86
    iput-boolean v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z

    .line 90
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v7, v1, v8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v5, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput v8, v2, v6

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v5

    aput v7, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 91
    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    .line 96
    iput-object p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    .line 97
    return-void

    .line 90
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        -0x2
        -0x3
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x3
        -0x3
        -0x1
    .end array-data

    :array_6
    .array-data 4
        -0x3
        -0x3
        -0x2
    .end array-data

    .line 91
    :array_7
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    .line 78
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 80
    iput v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    .line 86
    iput-boolean v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z

    .line 90
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v7, v1, v8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v5, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput v8, v2, v6

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v5

    aput v7, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 91
    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    .line 118
    invoke-direct {p0, p1, v5, v6, p2}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V

    .line 119
    return-void

    .line 90
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        -0x2
        -0x3
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x3
        -0x3
        -0x1
    .end array-data

    :array_6
    .array-data 4
        -0x3
        -0x3
        -0x2
    .end array-data

    .line 91
    :array_7
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 122
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    .line 78
    iput v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 80
    iput v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    .line 86
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z

    .line 90
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    aput v7, v1, v5

    aput v7, v1, v8

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v4, [I

    aput v7, v1, v5

    aput v6, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput v8, v2, v5

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v7, v2, v5

    const/4 v3, -0x2

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v6

    aput v7, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput v7, v2, v5

    const/4 v3, -0x3

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v5

    const/4 v3, -0x3

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 91
    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    .line 123
    invoke-direct {p0, p1, p2, v5, p3}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V

    .line 124
    return-void

    .line 90
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        -0x2
        -0x3
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x3
        -0x3
        -0x1
    .end array-data

    :array_6
    .array-data 4
        -0x3
        -0x3
        -0x2
    .end array-data

    .line 91
    :array_7
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    .line 78
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 80
    iput v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    .line 86
    iput-boolean v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z

    .line 90
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v7, v1, v8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v4, [I

    aput v7, v1, v6

    aput v5, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput v8, v2, v6

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x2

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v5

    aput v7, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput v7, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    const/4 v3, -0x4

    aput v3, v2, v6

    const/4 v3, -0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 91
    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V

    .line 109
    return-void

    .line 90
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        -0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        -0x2
        -0x3
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x3
        -0x3
        -0x1
    .end array-data

    :array_6
    .array-data 4
        -0x3
        -0x3
        -0x2
    .end array-data

    .line 91
    :array_7
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data
.end method

.method private a(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V
    .locals 3

    .prologue
    .line 133
    iput-object p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    .line 134
    sput-object p1, Lcn/cmgame/billing/util/e;->gU:Landroid/content/Context;

    .line 135
    iput-object p4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eS:Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    invoke-virtual {p0, p3}, Lcn/cmgame/billing/ui/OpeningAnimation;->k(Z)V

    .line 145
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    int-to-float v0, v0

    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    .line 146
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(IZLandroid/content/Context;)V

    .line 148
    invoke-direct {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    const-string v1, "gc_billing_cmgc_game_tag"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/cmgame/billing/ui/OpeningAnimation$1;

    invoke-direct {v2, p0, p1}, Lcn/cmgame/billing/ui/OpeningAnimation$1;-><init>(Lcn/cmgame/billing/ui/OpeningAnimation;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    .line 156
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcn/cmgame/billing/util/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1, v2}, Lcn/cmgame/billing/util/d;->setColor(I)V

    .line 372
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    invoke-virtual {p1, v2, v2, v0, v1}, Lcn/cmgame/billing/util/d;->fillRect(IIII)V

    .line 373
    return-void
.end method

.method private cH()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CHINAMOBILE_OMS_GAME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v2, "android.intent.category.CHINAMOBILE_GAMES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 197
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 200
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(IIZ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x55

    .line 548
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getX()I

    move-result v0

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getX()I

    move-result v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getY()I

    move-result v0

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getY()I

    move-result v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    .line 551
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    if-nez v0, :cond_0

    .line 553
    const/16 v0, -0x15

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->f(I)V

    .line 554
    iput-boolean p3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    .line 555
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    invoke-virtual {v0, v2, v3}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->postInvalidate()V

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getX()I

    move-result v0

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getX()I

    move-result v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getY()I

    move-result v0

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getY()I

    move-result v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_5

    .line 561
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    if-nez v0, :cond_0

    .line 563
    const/16 v0, -0x16

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->f(I)V

    .line 564
    iput-boolean p3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    .line 565
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    invoke-virtual {v0, v2, v3}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    goto/16 :goto_0

    .line 568
    :cond_4
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->postInvalidate()V

    goto/16 :goto_0

    .line 571
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->f(I)V

    goto/16 :goto_0
.end method

.method public a(IZLandroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    iput-boolean p2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eq:Z

    .line 209
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eq:Z

    if-nez v0, :cond_0

    .line 210
    iput v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 211
    iput-boolean v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    .line 217
    :goto_0
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcn/cmgame/billing/util/e;

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    .line 218
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x0

    const-string v2, "/OpeningAnimation/g_logo_sp.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 219
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x1

    const-string v2, "/OpeningAnimation/g_logo_cmcc.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x2

    const-string v2, "/OpeningAnimation/g_logo_cp.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/cmgame/billing/util/e;

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    .line 223
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x0

    const-string v2, "/OpeningAnimation/g_rotate_left.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 224
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x1

    const-string v2, "/OpeningAnimation/g_rotate_mid.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 225
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    const/4 v1, 0x2

    const-string v2, "/OpeningAnimation/g_rotate_right.png"

    invoke-static {v2}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 227
    const-string v0, "/OpeningAnimation/g_logo_cmgc.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    .line 228
    const-string v0, "/OpeningAnimation/g_game_title.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    .line 229
    const-string v0, "/OpeningAnimation/g_sound_ask.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    .line 230
    const-string v0, "/OpeningAnimation/g_yes.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    .line 231
    const-string v0, "/OpeningAnimation/g_no.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    .line 232
    const-string v0, "/OpeningAnimation/g_yes_hl.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ex:Lcn/cmgame/billing/util/e;

    .line 233
    const-string v0, "/OpeningAnimation/g_no_hl.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ey:Lcn/cmgame/billing/util/e;

    .line 234
    const-string v0, "/OpeningAnimation/g_logo_cmgc_s.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    .line 235
    const-string v0, "/OpeningAnimation/g_rocker.png"

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    new-instance v0, Lcn/cmgame/billing/ui/OpeningAnimation$a;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;-><init>(Lcn/cmgame/billing/ui/OpeningAnimation;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    .line 240
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    .line 241
    return-void

    .line 213
    :cond_0
    iput v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 214
    iput-boolean v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected b(Lcn/cmgame/billing/util/d;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 415
    const/16 v2, 0x60

    .line 416
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    add-int/lit8 v0, v0, 0x1

    .line 493
    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 494
    return-void

    .line 418
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Lcn/cmgame/billing/util/d;)V

    .line 419
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    div-int/lit8 v3, v3, 0x4

    const/16 v4, 0x50

    invoke-virtual {p1, v0, v2, v3, v4}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 420
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    invoke-virtual {p1, v1, v1, v0, v2}, Lcn/cmgame/billing/util/d;->setClip(IIII)V

    goto :goto_0

    .line 423
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Lcn/cmgame/billing/util/d;)V

    .line 425
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int v3, v0, v3

    .line 428
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v4, -0x15

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ex:Lcn/cmgame/billing/util/e;

    :goto_1
    iget v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    invoke-virtual {p1, v0, v4, v3, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 431
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v4, -0x16

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ey:Lcn/cmgame/billing/util/e;

    :goto_2
    iget v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v5}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v4, v3, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 434
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eR:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    sub-int v0, v3, v0

    .line 435
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    invoke-virtual {v4}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v1, v3, v0, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 438
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v1

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 439
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    invoke-virtual {v4}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v1, v3, v0, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 442
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 443
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    invoke-virtual {v4}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v1, v3, v0, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    goto/16 :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    goto :goto_1

    .line 431
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    goto :goto_2

    .line 434
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eN:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_3

    .line 446
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(Lcn/cmgame/billing/util/d;)V

    .line 448
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    invoke-virtual {v4}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    invoke-virtual {v5}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v0, v3, v4, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 449
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eJ:I

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 454
    :pswitch_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget-object v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    invoke-virtual {v4}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v0, v1, v3, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    goto/16 :goto_0

    .line 461
    :pswitch_5
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v0

    .line 462
    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 464
    :goto_4
    if-ge v1, v8, :cond_0

    .line 465
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    iget v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    aget-object v4, v4, v5

    aget v4, v4, v1

    .line 466
    div-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    mul-int v6, v1, v0

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    .line 467
    iget v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 468
    if-ltz v4, :cond_5

    .line 469
    div-int/lit8 v4, v0, 0x3

    iget-object v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    mul-int v5, v1, v0

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 470
    iget v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 471
    iget-object v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6, v4, v5, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 464
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 472
    :cond_5
    const/4 v7, -0x2

    if-ne v4, v7, :cond_6

    .line 473
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v4, v4, v1

    iget v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    goto :goto_5

    .line 474
    :cond_6
    const/4 v7, -0x3

    if-ne v4, v7, :cond_7

    .line 475
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4, v5, v6, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    goto :goto_5

    .line 476
    :cond_7
    const/4 v7, -0x4

    if-ne v4, v7, :cond_4

    .line 477
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v4, v4, v1

    iget v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eM:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    goto :goto_5

    .line 482
    :pswitch_6
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v0

    .line 483
    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 484
    :goto_6
    if-ge v1, v8, :cond_0

    .line 485
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v4, v4, v1

    div-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    mul-int v6, v1, v0

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    iget-object v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v4, v5, v6, v2}, Lcn/cmgame/billing/util/d;->a(Lcn/cmgame/billing/util/e;III)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 449
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public cI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 244
    iput-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    .line 245
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    .line 255
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->es:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->es:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 263
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 265
    :cond_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 267
    :cond_5
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 269
    :cond_6
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 271
    :cond_7
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 273
    :cond_8
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    .line 274
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    .line 275
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->es:Lcn/cmgame/billing/util/e;

    .line 276
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->et:Lcn/cmgame/billing/util/e;

    .line 277
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ev:Lcn/cmgame/billing/util/e;

    .line 278
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ew:Lcn/cmgame/billing/util/e;

    .line 279
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ez:Lcn/cmgame/billing/util/e;

    .line 280
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eB:Lcn/cmgame/billing/util/e;

    .line 281
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eu:Lcn/cmgame/billing/util/e;

    .line 282
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eC:Lcn/cmgame/billing/util/e;

    .line 283
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    .line 284
    iput-object v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eE:Lcn/cmgame/billing/util/d;

    .line 285
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 287
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 290
    :cond_9
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_a
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 297
    return-void

    .line 246
    :cond_b
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 247
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 248
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->er:[Lcn/cmgame/billing/util/e;

    aput-object v2, v1, v0

    .line 250
    :cond_c
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    .line 251
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/cmgame/billing/util/e;->recycle()V

    .line 252
    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eA:[Lcn/cmgame/billing/util/e;

    aput-object v2, v1, v0

    .line 245
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method public cJ()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public cK()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->removeMessages(I)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    .line 398
    :cond_0
    return-void
.end method

.method public cL()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 497
    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v3, -0x15

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/4 v3, -0x6

    if-ne v2, v3, :cond_2

    .line 498
    :cond_0
    sput-boolean v1, Lcn/cmgame/billing/ui/OpeningAnimation;->sIsMusicOn:Z

    move v0, v1

    .line 504
    :cond_1
    :goto_0
    return v0

    .line 500
    :cond_2
    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v3, -0x16

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    const/4 v3, -0x7

    if-ne v2, v3, :cond_1

    .line 501
    :cond_3
    sput-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->sIsMusicOn:Z

    move v0, v1

    .line 502
    goto :goto_0
.end method

.method public cM()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x55

    .line 508
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    if-eqz v0, :cond_2

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 510
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->update()V

    .line 511
    iget-boolean v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->postInvalidate()V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 514
    sub-long v4, v2, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 515
    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    sub-long v0, v2, v0

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->destroySplash()V

    goto :goto_0
.end method

.method public destroySplash()V
    .locals 1

    .prologue
    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cI()V

    .line 594
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 544
    iput p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    .line 545
    return-void
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    return v0
.end method

.method public k(Z)V
    .locals 4

    .prologue
    .line 163
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    .line 167
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    .line 168
    const-string v0, "GameBillling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen_Size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43700000    # 240.0f

    div-float/2addr v0, v2

    .line 175
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 176
    iget v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    add-int/lit8 v2, v2, -0x32

    iput v2, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    const/16 v2, 0xf0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v1, :cond_1

    .line 184
    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 186
    :cond_1
    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(F)V

    .line 187
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 404
    :try_start_0
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    iget v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    .line 405
    new-instance v0, Lcn/cmgame/billing/util/d;

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eD:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1}, Lcn/cmgame/billing/util/d;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eE:Lcn/cmgame/billing/util/d;

    .line 406
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eE:Lcn/cmgame/billing/util/d;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->b(Lcn/cmgame/billing/util/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    sput-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->eU:Z

    .line 379
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cK()V

    .line 380
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 383
    sget-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->eU:Z

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lcn/cmgame/billing/ui/OpeningAnimation$a;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;-><init>(Lcn/cmgame/billing/ui/OpeningAnimation;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    .line 385
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eQ:Lcn/cmgame/billing/ui/OpeningAnimation$a;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sleep(J)V

    .line 387
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 588
    :goto_0
    :pswitch_0
    return v3

    .line 580
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(IIZ)V

    goto :goto_0

    .line 585
    :pswitch_2
    invoke-virtual {p0, v0, v1, v3}, Lcn/cmgame/billing/ui/OpeningAnimation;->a(IIZ)V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setScreenHeight(I)V
    .locals 0

    .prologue
    .line 613
    iput p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eH:I

    .line 614
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .prologue
    .line 605
    iput p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eG:I

    .line 606
    return-void
.end method

.method public update()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 300
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    packed-switch v0, :pswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    if-lt v0, v9, :cond_0

    .line 303
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eq:Z

    if-eqz v0, :cond_1

    .line 304
    iput v8, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 308
    :goto_1
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 309
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    goto :goto_0

    .line 306
    :cond_1
    iput v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    goto :goto_1

    .line 313
    :pswitch_1
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eq:Z

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iput v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    .line 320
    :cond_2
    :goto_2
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 321
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eI:I

    goto :goto_0

    .line 318
    :cond_3
    iput v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    goto :goto_2

    .line 324
    :pswitch_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    sget-boolean v0, Lcn/cmgame/billing/ui/OpeningAnimation;->sIsMusicOn:Z

    if-eqz v0, :cond_4

    .line 326
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eP:Landroid/content/res/Resources;

    const-string v2, "opening_sound"

    const-string v3, "raw"

    iget-object v4, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eO:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    .line 327
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eF:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_4
    :goto_3
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eJ:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 333
    :pswitch_3
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 334
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 335
    iput v8, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eJ:I

    goto :goto_0

    .line 339
    :pswitch_4
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    if-ne v0, v7, :cond_0

    .line 340
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 341
    iput v6, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eJ:I

    goto :goto_0

    .line 345
    :pswitch_5
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    iget-object v1, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eT:[[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 346
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 347
    iput v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eJ:I

    goto :goto_0

    .line 351
    :pswitch_6
    iget v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    if-ne v0, v9, :cond_0

    .line 352
    iput v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eL:I

    .line 353
    iput v7, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eK:I

    goto :goto_0

    .line 359
    :pswitch_7
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eo:Z

    .line 360
    iput-boolean v5, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->ep:Z

    .line 361
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eS:Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;

    if-eqz v0, :cond_5

    .line 362
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation;->eS:Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;

    sget-boolean v1, Lcn/cmgame/billing/ui/OpeningAnimation;->sIsMusicOn:Z

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;->onAnimationCompleted(Z)V

    .line 363
    :cond_5
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/OpeningAnimation;->destroySplash()V

    goto/16 :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_3

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
