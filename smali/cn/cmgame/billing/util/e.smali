.class public Lcn/cmgame/billing/util/e;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field public static gU:Landroid/content/Context;


# instance fields
.field private gV:Landroid/graphics/Bitmap;

.field private gW:I

.field private gX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcn/cmgame/billing/util/e;->gU:Landroid/content/Context;

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcn/cmgame/billing/util/e;->d(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)Lcn/cmgame/billing/util/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->a(Ljava/io/InputStream;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Lcn/cmgame/billing/util/e;
    .locals 2

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/cmgame/billing/util/e;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/cmgame/billing/util/e;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Lcn/cmgame/billing/util/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Lcn/cmgame/billing/util/e;

    invoke-direct {v0, v1}, Lcn/cmgame/billing/util/e;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aC(Ljava/lang/String;)Lcn/cmgame/billing/util/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 28
    :cond_0
    sget-object v0, Lcn/cmgame/billing/util/e;->gU:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->a(Ljava/io/InputStream;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcn/cmgame/billing/util/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/util/e;->a(Ljava/io/InputStream;)Lcn/cmgame/billing/util/e;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 62
    int-to-float v0, v0

    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 63
    int-to-float v1, v1

    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 64
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 65
    :cond_0
    iput-object p1, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public cY()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcn/cmgame/billing/util/e;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    .line 93
    invoke-virtual {p0}, Lcn/cmgame/billing/util/e;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    .line 94
    iget-object v2, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/cmgame/billing/util/e;->gW:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcn/cmgame/billing/util/e;->gX:I

    return v0
.end method

.method public j(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcn/cmgame/billing/util/e;->gW:I

    .line 100
    return-void
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcn/cmgame/billing/util/e;->gX:I

    .line 109
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    iput-object v1, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    iput-object v1, p0, Lcn/cmgame/billing/util/e;->gV:Landroid/graphics/Bitmap;

    .line 77
    return-void
.end method
