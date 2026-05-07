.class public Lcn/cmgame/sdk/e/f;
.super Ljava/lang/Object;
.source "GameBase.java"


# static fields
.field protected static jG:Lcn/cmgame/sdk/e/b$a;

.field protected static jH:Z

.field protected static jI:Landroid/os/Handler;

.field protected static jJ:Landroid/content/Context;

.field protected static jK:F

.field protected static jM:Z


# instance fields
.field private eG:I

.field private eH:I

.field protected eO:Landroid/app/Activity;

.field protected jL:Z

.field protected jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jr:Lcn/cmgame/sdk/e/b$a;

    sput-object v0, Lcn/cmgame/sdk/e/f;->jG:Lcn/cmgame/sdk/e/b$a;

    .line 24
    sput-boolean v1, Lcn/cmgame/sdk/e/f;->jH:Z

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcn/cmgame/sdk/e/f;->jK:F

    .line 42
    sput-boolean v1, Lcn/cmgame/sdk/e/f;->jM:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/sdk/e/f;->jL:Z

    .line 66
    iput-object p1, p0, Lcn/cmgame/sdk/e/f;->eO:Landroid/app/Activity;

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/sdk/e/f;->jL:Z

    .line 58
    sput-object p1, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static a(F)V
    .locals 0

    .prologue
    .line 316
    sput p0, Lcn/cmgame/billing/api/a;->jK:F

    .line 317
    return-void
.end method

.method public static a(Lcn/cmgame/sdk/e/b$a;)V
    .locals 0

    .prologue
    .line 279
    sput-object p0, Lcn/cmgame/sdk/e/f;->jG:Lcn/cmgame/sdk/e/b$a;

    .line 280
    return-void
.end method

.method public static b(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 300
    sput-object p0, Lcn/cmgame/sdk/e/f;->jI:Landroid/os/Handler;

    .line 301
    return-void
.end method

.method public static dE()Z
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Lcn/cmgame/sdk/e/f;->jM:Z

    return v0
.end method

.method public static dF()Z
    .locals 1

    .prologue
    .line 257
    sget-boolean v0, Lcn/cmgame/sdk/e/f;->jH:Z

    return v0
.end method

.method public static dH()Lcn/cmgame/sdk/e/b$a;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcn/cmgame/sdk/e/f;->jG:Lcn/cmgame/sdk/e/b$a;

    return-object v0
.end method

.method public static dI()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcn/cmgame/sdk/e/f;->jI:Landroid/os/Handler;

    return-object v0
.end method

.method public static dK()F
    .locals 1

    .prologue
    .line 312
    sget v0, Lcn/cmgame/sdk/e/f;->jK:F

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;

    return-object v0
.end method

.method public static p(Z)V
    .locals 0

    .prologue
    .line 249
    sput-boolean p0, Lcn/cmgame/sdk/e/f;->jM:Z

    .line 250
    return-void
.end method

.method public static q(Z)V
    .locals 0

    .prologue
    .line 261
    sput-boolean p0, Lcn/cmgame/sdk/e/f;->jH:Z

    .line 262
    return-void
.end method

.method public static r(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 244
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 245
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 296
    sput-object p0, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;

    .line 297
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 213
    const-string v0, "WIFI"

    .line 231
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "CMNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const-string v0, "CMNET"

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "CMWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const-string v0, "CMWAP"

    goto :goto_0

    .line 222
    :cond_4
    const-string v1, "UNINET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const-string v0, "UNINET"

    goto :goto_0

    .line 224
    :cond_5
    const-string v1, "UNIWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    const-string v0, "UNIWAP"

    goto :goto_0

    .line 226
    :cond_6
    const-string v1, "CTNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 227
    const-string v0, "CTNET"

    goto :goto_0

    .line 228
    :cond_7
    const-string v1, "CTWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v0, "CTWAP"

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object p2

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 207
    goto :goto_0
.end method

.method public dB()V
    .locals 4

    .prologue
    .line 81
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    iget-object v0, p0, Lcn/cmgame/sdk/e/f;->eO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcn/cmgame/sdk/e/f;->eG:I

    .line 85
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/cmgame/sdk/e/f;->eH:I

    .line 86
    const-string v0, "GameBillling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen_Size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/cmgame/sdk/e/f;->eG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/cmgame/sdk/e/f;->eH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43700000    # 240.0f

    div-float/2addr v0, v2

    .line 93
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 94
    iget v2, p0, Lcn/cmgame/sdk/e/f;->eH:I

    add-int/lit8 v2, v2, -0x32

    iput v2, p0, Lcn/cmgame/sdk/e/f;->eH:I

    .line 101
    :cond_0
    invoke-static {}, Lcn/cmgame/sdk/e/j;->dN()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v1, :cond_1

    .line 102
    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 104
    :cond_1
    invoke-static {v0}, Lcn/cmgame/sdk/e/f;->a(F)V

    .line 105
    return-void
.end method

.method public declared-synchronized dC()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 186
    :goto_0
    monitor-exit p0

    return v0

    .line 115
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/cmgame/sdk/e/f;->dG()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    sget-object v2, Lcn/cmgame/sdk/e/b$a;->jr:Lcn/cmgame/sdk/e/b$a;

    invoke-static {v2}, Lcn/cmgame/sdk/e/f;->a(Lcn/cmgame/sdk/e/b$a;)V

    .line 119
    sget-object v2, Lcn/cmgame/sdk/e/b$a;->jr:Lcn/cmgame/sdk/e/b$a;

    .line 120
    const/4 v3, 0x0

    sput-boolean v3, Lcn/cmgame/sdk/e/f;->jH:Z

    .line 157
    invoke-virtual {p0}, Lcn/cmgame/sdk/e/f;->dD()Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/cmgame/sdk/e/f;->r(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :cond_2
    :try_start_2
    const-string v0, "WIFI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->js:Lcn/cmgame/sdk/e/b$a;

    .line 164
    const/4 v2, 0x1

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jM:Z

    .line 184
    :goto_1
    invoke-static {v0}, Lcn/cmgame/sdk/e/f;->a(Lcn/cmgame/sdk/e/b$a;)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/cmgame/sdk/e/f;->r(Z)V

    move v0, v1

    .line 186
    goto :goto_0

    .line 165
    :cond_3
    const-string v0, "CMWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jt:Lcn/cmgame/sdk/e/b$a;

    .line 167
    const/4 v2, 0x1

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z

    goto :goto_1

    .line 168
    :cond_4
    const-string v0, "CMNET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->ju:Lcn/cmgame/sdk/e/b$a;

    .line 170
    const/4 v2, 0x0

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z

    goto :goto_1

    .line 171
    :cond_5
    const-string v0, "UNIWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jv:Lcn/cmgame/sdk/e/b$a;

    .line 173
    const/4 v2, 0x0

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z

    goto :goto_1

    .line 174
    :cond_6
    const-string v0, "UNINET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jw:Lcn/cmgame/sdk/e/b$a;

    .line 176
    const/4 v2, 0x0

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z

    goto :goto_1

    .line 177
    :cond_7
    const-string v0, "CTWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 178
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jx:Lcn/cmgame/sdk/e/b$a;

    .line 179
    const/4 v2, 0x0

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z

    goto :goto_1

    .line 180
    :cond_8
    const-string v0, "CTNET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    sget-object v0, Lcn/cmgame/sdk/e/b$a;->jy:Lcn/cmgame/sdk/e/b$a;

    .line 182
    const/4 v2, 0x0

    sput-boolean v2, Lcn/cmgame/sdk/e/f;->jH:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_9
    move-object v0, v2

    goto :goto_1
.end method

.method public dD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcn/cmgame/sdk/e/f;->jJ:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/cmgame/sdk/e/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/cmgame/sdk/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dG()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/cmgame/sdk/e/f;->jL:Z

    return v0
.end method

.method public dJ()Lcn/cmgame/sdk/network/NetworkChangeReceiver;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcn/cmgame/sdk/e/f;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcn/cmgame/sdk/e/f;->eH:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcn/cmgame/sdk/e/f;->eG:I

    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/cmgame/sdk/e/f;->r(Z)V

    .line 73
    invoke-virtual {p0}, Lcn/cmgame/sdk/e/f;->dB()V

    .line 74
    return-void
.end method

.method public q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {p1}, Lcn/cmgame/sdk/e/f;->r(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcn/cmgame/sdk/e/f;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public r(Z)V
    .locals 0

    .prologue
    .line 265
    iput-boolean p1, p0, Lcn/cmgame/sdk/e/f;->jL:Z

    .line 266
    return-void
.end method
