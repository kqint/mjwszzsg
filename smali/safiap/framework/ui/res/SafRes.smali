.class public Lsafiap/framework/ui/res/SafRes;
.super Ljava/lang/Object;
.source "SafRes.java"


# static fields
.field private static final ORIGINAL_HEIGHT:I = 0x280

.field private static final ORIGINAL_WIDTH:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "SafRes"

.field private static logger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const-string v0, "SafRes"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/ui/res/SafRes;->logger:Lsafiap/framework/util/MyLogger;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Landroid/view/WindowManager;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "manager"    # Landroid/view/WindowManager;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawablePath"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 91
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 93
    if-eqz p0, :cond_1

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x280

    if-ne v4, v5, :cond_0

    .line 99
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x1e0

    if-eq v4, v5, :cond_1

    .line 101
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x1e0

    .line 102
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x280

    .line 103
    const/4 v6, 0x1

    .line 100
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    move-object v4, v0

    .line 109
    :goto_1
    return-object v4

    .line 85
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "SafRes"

    const-string v5, "SAF-A Exception:513002"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getDimention(Landroid/view/WindowManager;I)I
    .locals 2
    .param p0, "manager"    # Landroid/view/WindowManager;
    .param p1, "length"    # I

    .prologue
    .line 193
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x1e0

    return v1
.end method

.method public static getDrawable(Landroid/view/WindowManager;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "manager"    # Landroid/view/WindowManager;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawablePath"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 43
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 50
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 52
    if-eqz p0, :cond_1

    .line 54
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x280

    if-ne v5, v6, :cond_0

    .line 58
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x1e0

    if-eq v5, v6, :cond_1

    .line 60
    :cond_0
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x1e0

    .line 61
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x280

    .line 62
    const/4 v7, 0x1

    .line 59
    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 68
    :goto_1
    return-object v2

    .line 44
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "SafRes"

    const-string v6, "SAF-A Exception:513001"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getStateListColorDrawable([[I[I)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "states"    # [[I
    .param p1, "colors"    # [I

    .prologue
    .line 178
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_1

    .line 179
    sget-object v3, Lsafiap/framework/ui/res/SafRes;->logger:Lsafiap/framework/util/MyLogger;

    const-string v4, "args count error"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x0

    .line 188
    :cond_0
    return-object v1

    .line 183
    :cond_1
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 184
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 185
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    aget v3, p1, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 186
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    aget-object v3, p0, v2

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getStateListDrawable(Landroid/view/WindowManager;Landroid/content/res/Resources;[[I[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 11
    .param p0, "manager"    # Landroid/view/WindowManager;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "states"    # [[I
    .param p3, "drawablePaths"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 126
    array-length v7, p2

    array-length v8, p3

    if-eq v7, v8, :cond_1

    .line 127
    sget-object v7, Lsafiap/framework/ui/res/SafRes;->logger:Lsafiap/framework/util/MyLogger;

    const-string v8, "args count error"

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x0

    .line 172
    :cond_0
    return-object v3

    .line 131
    :cond_1
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 132
    .local v3, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p2

    if-ge v5, v7, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    aget-object v7, p3, v5

    if-nez v7, :cond_2

    .line 136
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 170
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    aget-object v7, p2, v5

    invoke-virtual {v3, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    :cond_2
    const/4 v6, 0x0

    .line 140
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    aget-object v8, p3, v5

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 148
    :goto_2
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 151
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x280

    if-ne v7, v8, :cond_3

    .line 155
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x1e0

    if-eq v7, v8, :cond_4

    .line 158
    :cond_3
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x1e0

    .line 160
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x280

    .line 161
    const/4 v9, 0x1

    .line 157
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 141
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "SafRes"

    .line 143
    const-string v8, "SAF-A Exception:513003"

    .line 142
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method
