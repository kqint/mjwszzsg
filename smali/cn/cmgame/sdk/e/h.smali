.class public Lcn/cmgame/sdk/e/h;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/sdk/e/h$a;
    }
.end annotation


# static fields
.field private static kw:Landroid/content/res/Resources;

.field private static kx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->bg(Ljava/lang/String;)I

    move-result v0

    .line 102
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ba(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "menu"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bb(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "anim"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bc(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "color"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bd(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static be(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "dimen"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bf(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "layout"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static bg(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "plurals"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bh(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "id"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bi(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "string"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 69
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bk(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "array"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bl(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "style"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bm(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    const-string v1, "xml"

    sget-object v2, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static bn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    sput-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    .line 107
    sput-object v0, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    sget-object v1, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    .line 88
    if-eqz v1, :cond_0

    sget-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/h;->kw:Landroid/content/res/Resources;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/h;->kx:Ljava/lang/String;

    .line 114
    return-void
.end method
