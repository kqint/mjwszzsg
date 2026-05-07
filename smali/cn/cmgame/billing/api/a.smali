.class public Lcn/cmgame/billing/api/a;
.super Lcn/cmgame/sdk/e/f;
.source "GameBillingMain.java"


# static fields
.field private static final a:Ljava/lang/String; = "Signature-OF-Key"

.field private static final b:Ljava/lang/String; = "Signature-OF-Secret"

.field private static final c:Ljava/lang/String; = "cmgc_ch"

.field private static final d:Ljava/lang/String; = "cmgc_sh"

.field private static e:Lcn/cmgame/billing/api/a;

.field private static f:Landroid/os/Handler;

.field private static g:Z

.field private static h:Lcn/cmgame/billing/api/GameInterface$BillingCallback;


# instance fields
.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/cmgame/billing/b/f;

.field private k:Lcn/cmgame/billing/b/a;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/cmgame/billing/a/c;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcn/cmgame/billing/b/c;

.field private s:Lcn/cmgame/billing/api/b;

.field private t:Z

.field private u:Lcn/cmgame/billing/b/h;

.field private v:Lcn/cmgame/billing/util/a;

.field private w:I

.field private x:Lcn/cmgame/billing/c/e;

.field private y:Lcn/cmgame/billing/util/Const$f;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcn/cmgame/billing/api/a$1;

    invoke-direct {v0}, Lcn/cmgame/billing/api/a$1;-><init>()V

    sput-object v0, Lcn/cmgame/billing/api/a;->f:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/e/f;-><init>(Landroid/app/Activity;)V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->n:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    .line 212
    iput-boolean v1, p0, Lcn/cmgame/billing/api/a;->t:Z

    .line 224
    iput v1, p0, Lcn/cmgame/billing/api/a;->w:I

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/e/f;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->n:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    .line 212
    iput-boolean v1, p0, Lcn/cmgame/billing/api/a;->t:Z

    .line 224
    iput v1, p0, Lcn/cmgame/billing/api/a;->w:I

    .line 248
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/api/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->eO:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcn/cmgame/billing/util/f;
    .locals 3

    .prologue
    .line 420
    const-string v0, "ro_flag_"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 424
    new-instance v0, Lcn/cmgame/billing/util/f;

    invoke-direct {v0}, Lcn/cmgame/billing/util/f;-><init>()V

    .line 425
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcn/cmgame/billing/util/f;->aD(Ljava/lang/String;)V

    .line 426
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcn/cmgame/billing/util/f;->aG(Ljava/lang/String;)V

    .line 427
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcn/cmgame/billing/util/f;->aE(Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/util/f;->aF(Ljava/lang/String;)V

    .line 432
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1289
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1290
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1291
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 1295
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1292
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1293
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcn/cmgame/billing/api/a$3;

    invoke-direct {v0}, Lcn/cmgame/billing/api/a$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    const-string v0, "Charge.xml"

    invoke-static {p1, v0}, Lcn/cmgame/sdk/e/j;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v0, "ChargeCMGC.xml"

    invoke-static {p1, v0}, Lcn/cmgame/sdk/e/j;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->aY(Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "&"

    const-string v2, "&amp;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->j([B)Ljava/lang/Object;

    move-result-object v0

    .line 271
    instance-of v1, v0, Lcn/cmgame/billing/b/a;

    if-eqz v1, :cond_1

    .line 272
    check-cast v0, Lcn/cmgame/billing/b/a;

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    .line 277
    :cond_1
    const-string v0, "ConsumeCodeInfo.xml"

    invoke-static {p1, v0}, Lcn/cmgame/sdk/e/j;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->aY(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->j([B)Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcn/cmgame/billing/b/f;

    if-eqz v1, :cond_2

    .line 281
    check-cast v0, Lcn/cmgame/billing/b/f;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/b/f;)V

    .line 282
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->p()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->l:Ljava/util/List;

    .line 286
    :cond_2
    const-string v0, "CMGC/ConfigExtend.xml"

    invoke-static {p1, v0}, Lcn/cmgame/sdk/e/j;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->i([B)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->j([B)Ljava/lang/Object;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcn/cmgame/billing/b/c;

    if-eqz v1, :cond_3

    .line 290
    check-cast v0, Lcn/cmgame/billing/b/c;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/b/c;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :cond_3
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 972
    if-nez p0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 977
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 978
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V
    .locals 0

    .prologue
    .line 1322
    sput-object p0, Lcn/cmgame/billing/api/a;->h:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    .line 1323
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/api/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1469
    invoke-direct {p0, p1}, Lcn/cmgame/billing/api/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 613
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->p:Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    iget-object v1, v1, Lcn/cmgame/billing/api/a;->q:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 655
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find instance or context of billing SDK..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 668
    :goto_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "game_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 669
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 670
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    return-void

    .line 664
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 665
    :goto_1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 664
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v2, Lcn/cmgame/billing/util/f;

    invoke-direct {v2}, Lcn/cmgame/billing/util/f;-><init>()V

    .line 402
    invoke-virtual {v2, p0}, Lcn/cmgame/billing/util/f;->aD(Ljava/lang/String;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 404
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 413
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/cmgame/billing/util/f;->aG(Ljava/lang/String;)V

    .line 414
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lcn/cmgame/billing/util/f;->aE(Ljava/lang/String;)V

    .line 415
    const-string v0, "30"

    invoke-virtual {v2, v0}, Lcn/cmgame/billing/util/f;->aF(Ljava/lang/String;)V

    .line 416
    const-string v0, "ro_flag_"

    invoke-virtual {v2}, Lcn/cmgame/billing/util/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void

    .line 407
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_2

    .line 409
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 868
    :cond_0
    return-void

    .line 863
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 1080
    invoke-static {}, Lcn/cmgame/billing/api/a;->exitApp()V

    .line 1082
    if-eqz p0, :cond_0

    .line 1088
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    .line 1095
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1106
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 512
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 534
    :cond_1
    :goto_0
    return v0

    .line 518
    :cond_2
    if-nez p1, :cond_1

    .line 525
    invoke-static {p2}, Lcn/cmgame/billing/api/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    const-string v0, "gc_billing_ok_history"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    move v0, v1

    .line 527
    goto :goto_0

    .line 529
    :cond_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    const-string v0, "gc_billing_ok_order"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    move v0, v1

    .line 531
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find instance or context of billing SDK..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 640
    :goto_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "game_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 641
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 645
    :goto_1
    return-object v0

    .line 637
    :catch_0
    move-exception v2

    .line 638
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 645
    :cond_2
    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->i([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 1218
    const-string v1, "@@@@@@@@@"

    .line 1219
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1260
    :cond_0
    :goto_0
    return-object v0

    .line 1224
    :cond_1
    :try_start_0
    sget-object v0, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    .line 1225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1226
    if-eqz p0, :cond_2

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->bw(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1258
    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto :goto_0

    .line 1230
    :cond_3
    :try_start_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1231
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1234
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1258
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto :goto_0

    .line 1240
    :cond_4
    :try_start_2
    invoke-static {}, Lcn/cmgame/sdk/e/j;->dP()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 1258
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto :goto_0

    .line 1247
    :cond_5
    :try_start_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 1258
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto :goto_0

    .line 1258
    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_7

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 1252
    goto/16 :goto_0

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1255
    const-string v0, "@@@@@@@@@"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1258
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto/16 :goto_0

    .line 1257
    :catchall_0
    move-exception v0

    .line 1258
    if-eqz p0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 1259
    const-string v0, "@@@@@@@@@"

    goto/16 :goto_0

    .line 1262
    :cond_8
    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 305
    invoke-static {}, Lcn/cmgame/billing/api/a;->e()V

    .line 306
    new-instance v0, Lcn/cmgame/billing/api/a;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    .line 307
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a;->a(Landroid/content/Context;)V

    .line 308
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/api/b;

    invoke-direct {v1, p0}, Lcn/cmgame/billing/api/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/b;)V

    .line 309
    invoke-static {p0}, Lcn/cmgame/sdk/sms/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    .line 310
    invoke-static {p0}, Lcn/cmgame/sdk/sms/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    .line 311
    sget-object v0, Lcn/cmgame/billing/api/a;->f:Landroid/os/Handler;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Landroid/os/Handler;)V

    .line 312
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/a/c;

    const-string v2, "Signature-OF-Key"

    const-string v3, "Signature-OF-Secret"

    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/cmgame/billing/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/a/c;)V

    .line 313
    return-void
.end method

.method private static b(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1029
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-static {}, Lcn/cmgame/sdk/e/j;->dO()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1035
    :cond_2
    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/api/a$7;

    invoke-direct {v1, p0, p2}, Lcn/cmgame/billing/api/a$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b(Lcn/cmgame/billing/a/a;)V
    .locals 2

    .prologue
    .line 954
    sget-object v0, Lcn/cmgame/billing/api/a;->jJ:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_check_network"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/cmgame/billing/a/a;->r(Ljava/lang/String;)V

    .line 963
    :goto_0
    return-void

    .line 958
    :cond_0
    sget-object v0, Lcn/cmgame/billing/api/a;->jJ:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_network_multi"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/cmgame/billing/a/a;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_1
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->q()Lcn/cmgame/billing/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/a/c;->a(Lcn/cmgame/billing/a/a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/cmgame/billing/api/a;)V
    .locals 0

    .prologue
    .line 1426
    invoke-direct {p0}, Lcn/cmgame/billing/api/a;->u()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    :try_start_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 782
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    const-string v0, "Signature-OF-Key"

    .line 787
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    iget-object v1, v1, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-static {}, Lcn/cmgame/billing/api/a;->a()Lcn/cmgame/billing/util/f;

    move-result-object v1

    .line 437
    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    const-string v2, "1"

    invoke-virtual {v1}, Lcn/cmgame/billing/util/f;->da()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 441
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-static {}, Lcn/cmgame/billing/api/a;->a()Lcn/cmgame/billing/util/f;

    move-result-object v1

    .line 448
    if-nez v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    invoke-virtual {v1}, Lcn/cmgame/billing/util/f;->db()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    invoke-virtual {v1}, Lcn/cmgame/billing/util/f;->db()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 885
    invoke-static {}, Lcn/cmgame/billing/api/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    const-string v0, "http://g.10086.cn/a/?utm=pl3"

    invoke-static {p0, v0}, Lcn/cmgame/billing/api/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1028
    invoke-static {p0, p1, p2}, Lcn/cmgame/billing/api/a;->b(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/api/a;)V
    .locals 0

    .prologue
    .line 1465
    invoke-direct {p0}, Lcn/cmgame/billing/api/a;->v()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1357
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 1336
    sput-boolean p0, Lcn/cmgame/billing/api/a;->g:Z

    .line 1337
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmgc_data_flag__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    const-string v1, "cmgc_ch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    .line 702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()V
    .locals 3

    .prologue
    .line 458
    invoke-static {}, Lcn/cmgame/billing/api/a;->a()Lcn/cmgame/billing/util/f;

    move-result-object v0

    .line 459
    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/cmgame/billing/api/a;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/util/f;->aF(Ljava/lang/String;)V

    .line 466
    const-string v1, "ro_flag_"

    invoke-virtual {v0}, Lcn/cmgame/billing/util/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "counter_flag__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-static {v1}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    const-string v0, "1"

    .line 730
    :goto_0
    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void

    .line 728
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V
    .locals 3

    .prologue
    .line 559
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {p0, p2, p3}, Lcn/cmgame/billing/api/a;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    if-eqz p4, :cond_2

    .line 566
    invoke-static {p4}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V

    .line 569
    :cond_2
    invoke-static {}, Lcn/cmgame/billing/api/a;->a()Lcn/cmgame/billing/util/f;

    move-result-object v0

    .line 570
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/cmgame/billing/util/f;->db()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcn/cmgame/billing/api/a;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v1

    sget-object v2, Lcn/cmgame/sdk/e/b$a;->jr:Lcn/cmgame/sdk/e/b$a;

    if-ne v1, v2, :cond_3

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/cmgame/billing/util/f;->da()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcn/cmgame/billing/util/f;->db()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 571
    const/4 v0, 0x1

    invoke-static {p0, v0, p3}, Lcn/cmgame/billing/api/a;->b(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/api/a$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/cmgame/billing/api/a$4;-><init>(Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static doBillingForUnity(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iput-object p4, v0, Lcn/cmgame/billing/api/a;->p:Ljava/lang/String;

    .line 602
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iput-object p5, v0, Lcn/cmgame/billing/api/a;->q:Ljava/lang/String;

    .line 604
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/cmgame/billing/api/a;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V

    .line 605
    return-void
.end method

.method private static e()V
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcn/cmgame/billing/b/a;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 474
    invoke-static {}, Lcn/cmgame/billing/b/b;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 475
    invoke-static {}, Lcn/cmgame/billing/c/b;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 476
    invoke-static {}, Lcn/cmgame/billing/b/f;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 477
    invoke-static {}, Lcn/cmgame/billing/b/c;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 478
    invoke-static {}, Lcn/cmgame/sdk/c/c;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 479
    invoke-static {}, Lcn/cmgame/billing/c/a;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 480
    invoke-static {}, Lcn/cmgame/billing/c/d;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 481
    invoke-static {}, Lcn/cmgame/billing/c/m;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 482
    invoke-static {}, Lcn/cmgame/billing/b/k;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 483
    invoke-static {}, Lcn/cmgame/billing/b/l;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 484
    invoke-static {}, Lcn/cmgame/billing/b/h;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 485
    invoke-static {}, Lcn/cmgame/billing/c/i;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 486
    invoke-static {}, Lcn/cmgame/billing/c/k;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 487
    invoke-static {}, Lcn/cmgame/billing/b/e;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 488
    invoke-static {}, Lcn/cmgame/billing/c/h;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 489
    invoke-static {}, Lcn/cmgame/billing/c/g;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 490
    invoke-static {}, Lcn/cmgame/billing/c/c;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 491
    invoke-static {}, Lcn/cmgame/billing/b/j;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 492
    invoke-static {}, Lcn/cmgame/billing/c/l;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 493
    invoke-static {}, Lcn/cmgame/billing/c/e;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 494
    invoke-static {}, Lcn/cmgame/billing/b/d;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 495
    invoke-static {}, Lcn/cmgame/billing/b/i;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 496
    invoke-static {}, Lcn/cmgame/billing/c/j;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 497
    invoke-static {}, Lcn/cmgame/billing/c/f;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 498
    invoke-static {}, Lcn/cmgame/billing/b/g;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 499
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 828
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 837
    :goto_0
    return v0

    .line 831
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v2

    .line 832
    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    .line 833
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_more_time_error"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 834
    const/4 v0, 0x1

    goto :goto_0

    .line 836
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 837
    goto :goto_0
.end method

.method public static exit(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1011
    new-instance v0, Lcn/cmgame/billing/api/a$6;

    invoke-direct {v0}, Lcn/cmgame/billing/api/a$6;-><init>()V

    invoke-static {p0, v0}, Lcn/cmgame/billing/api/a;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 1021
    return-void
.end method

.method public static exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V
    .locals 2

    .prologue
    .line 990
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/api/a$5;

    invoke-direct {v1, p0, p1}, Lcn/cmgame/billing/api/a$5;-><init>(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static exitApp()V
    .locals 1

    .prologue
    .line 1054
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-direct {v0}, Lcn/cmgame/billing/api/a;->j()V

    .line 1057
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 846
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 706
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->E()I

    move-result v1

    .line 707
    if-ne v1, v0, :cond_0

    .line 714
    :goto_0
    return v0

    .line 710
    :cond_0
    const/4 v2, 0x3

    if-eq v2, v1, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->isOrdered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    invoke-static {}, Lcn/cmgame/billing/api/a;->d()V

    goto :goto_0

    .line 714
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const-string v0, "starting_flag_"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivateFlag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 691
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBillingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    :try_start_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 803
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 806
    const-string v0, "Signature-OF-Key"

    move-object v1, v0

    .line 808
    :goto_0
    const-string v0, "0"

    .line 809
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    iget-object v2, v2, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    iget-object v2, v2, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_1
    :goto_1
    return-object v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 816
    const-string v0, "0"

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static h()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 748
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-object v0

    .line 751
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->p()Ljava/util/List;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 765
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 768
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/b;

    .line 757
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 758
    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "counter_flag__"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 761
    const-string v4, "{0}:{1}|"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1272
    :try_start_0
    new-instance v0, Lcn/cmgame/sdk/network/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://omsjf.cmgame.com/charging/log/accessGameLog?random="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcn/cmgame/billing/api/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/cmgame/sdk/network/b;-><init>(Ljava/lang/CharSequence;)V

    .line 1273
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/network/b;->setRequestMethod(Ljava/lang/String;)V

    .line 1274
    new-instance v1, Lcn/cmgame/sdk/e/d;

    const-string v2, "GameLog"

    invoke-direct {v1, v2}, Lcn/cmgame/sdk/e/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/sdk/e/d;->e([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/network/b;->c([B)V

    .line 1275
    const-string v1, "content-type"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/sdk/network/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0}, Lcn/cmgame/sdk/network/b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1363
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    const-string v0, ""

    .line 1372
    :goto_0
    return-object v0

    .line 1366
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1367
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1368
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1369
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    iget-object v2, v2, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1372
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 897
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->z()Lcn/cmgame/billing/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->z()Lcn/cmgame/billing/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/c;->aJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initializeApp(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-static {p0, v0, v0, v0}, Lcn/cmgame/billing/api/a;->initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lcn/cmgame/billing/api/a;->e()V

    .line 333
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->t(Landroid/content/Context;)V

    .line 334
    new-instance v0, Lcn/cmgame/billing/api/a;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    .line 335
    sget-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->initialize()V

    .line 336
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 337
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a;->a(Landroid/content/Context;)V

    .line 338
    invoke-static {p0}, Lcn/cmgame/sdk/sms/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    .line 339
    invoke-static {p0}, Lcn/cmgame/sdk/sms/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/api/b;

    invoke-direct {v1, p0}, Lcn/cmgame/billing/api/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/b;)V

    .line 341
    sget-object v0, Lcn/cmgame/billing/api/a;->f:Landroid/os/Handler;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Landroid/os/Handler;)V

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/f;->S(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/cmgame/billing/b/f;->O(Ljava/lang/String;)V

    .line 348
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/cmgame/billing/b/f;->T(Ljava/lang/String;)V

    .line 351
    :cond_2
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->k()V

    .line 354
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find billing information!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_4
    const-string v0, "Config.xml"

    invoke-static {p0, v0}, Lcn/cmgame/sdk/e/j;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find configuration file of SDK!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_5
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->a(Landroid/app/Activity;)V

    .line 365
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    .line 366
    sget-object v0, Lcn/cmgame/billing/api/a;->f:Landroid/os/Handler;

    new-instance v1, Lcn/cmgame/billing/api/a$2;

    invoke-direct {v1}, Lcn/cmgame/billing/api/a$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public static isMusicEnabled()Z
    .locals 1

    .prologue
    .line 1345
    sget-boolean v0, Lcn/cmgame/billing/api/a;->g:Z

    return v0
.end method

.method public static isOrdered()Z
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcn/cmgame/billing/api/a;->b()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1113
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1114
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->s()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1115
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->t()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1116
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->eO:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/api/a;->eO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->eO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->l()V

    .line 1120
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->s(Landroid/content/Context;)V

    .line 1121
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Landroid/os/Handler;)V

    .line 1122
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V

    .line 1123
    const/4 v0, 0x0

    sput-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1470
    const-string v0, "game_ids"

    invoke-static {v0, p1}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public static final n()Lcn/cmgame/billing/api/a;
    .locals 1

    .prologue
    .line 1299
    sget-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    return-object v0
.end method

.method public static r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;
    .locals 1

    .prologue
    .line 1329
    sget-object v0, Lcn/cmgame/billing/api/a;->h:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    return-object v0
.end method

.method public static setActivateFlag(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmgc_data_flag__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "cmgc_ch"

    :goto_0
    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void

    .line 681
    :cond_0
    const-string v0, "cmgc_sh"

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 1427
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-direct {v0}, Lcn/cmgame/billing/api/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1429
    :cond_0
    new-instance v0, Lcn/cmgame/billing/api/a$9;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a$9;-><init>(Lcn/cmgame/billing/api/a;)V

    invoke-static {v0}, Lcn/cmgame/billing/b/e;->a(Lcn/cmgame/billing/b/e$c;)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 1466
    const-string v0, "MILLIS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    return-void
.end method

.method public static viewMoreGames(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 876
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->c(Landroid/content/Context;)V

    .line 877
    return-void
.end method

.method private w()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1474
    const-string v1, "MILLIS"

    invoke-static {v1}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1476
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return v0

    .line 1478
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v2, v4

    const-wide/32 v3, 0x4f1a00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1479
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()Lcn/cmgame/billing/api/b;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->s:Lcn/cmgame/billing/api/b;

    return-object v0
.end method

.method public B()Lcn/cmgame/billing/b/k;
    .locals 1

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/b;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcn/cmgame/billing/api/a;->t:Z

    return v0
.end method

.method public D()Lcn/cmgame/billing/b/h;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->u:Lcn/cmgame/billing/b/h;

    return-object v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Lcn/cmgame/billing/api/a;->w:I

    return v0
.end method

.method public F()Lcn/cmgame/billing/c/e;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->x:Lcn/cmgame/billing/c/e;

    return-object v0
.end method

.method public G()Lcn/cmgame/billing/util/Const$f;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->y:Lcn/cmgame/billing/util/Const$f;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcn/cmgame/billing/a/a;)V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcn/cmgame/billing/api/a;->b(Lcn/cmgame/billing/a/a;)V

    .line 946
    return-void
.end method

.method public a(Lcn/cmgame/billing/a/c;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->m:Lcn/cmgame/billing/a/c;

    .line 1312
    return-void
.end method

.method public a(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 1508
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->s:Lcn/cmgame/billing/api/b;

    .line 1509
    return-void
.end method

.method public a(Lcn/cmgame/billing/b/c;)V
    .locals 0

    .prologue
    .line 1504
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->r:Lcn/cmgame/billing/b/c;

    .line 1505
    return-void
.end method

.method public a(Lcn/cmgame/billing/b/f;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->j:Lcn/cmgame/billing/b/f;

    .line 1497
    return-void
.end method

.method public a(Lcn/cmgame/billing/b/h;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->u:Lcn/cmgame/billing/b/h;

    .line 1541
    return-void
.end method

.method public a(Lcn/cmgame/billing/c/e;)V
    .locals 0

    .prologue
    .line 1548
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->x:Lcn/cmgame/billing/c/e;

    .line 1549
    return-void
.end method

.method public a(Lcn/cmgame/billing/util/Const$f;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->y:Lcn/cmgame/billing/util/Const$f;

    .line 1557
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V
    .locals 7

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    .line 1417
    if-nez v0, :cond_1

    .line 1418
    if-eqz p2, :cond_0

    .line 1419
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcn/cmgame/billing/c/e$a;->m(Ljava/lang/String;)V

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcn/cmgame/billing/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 1536
    iput p1, p0, Lcn/cmgame/billing/api/a;->w:I

    .line 1537
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1520
    iput-boolean p1, p0, Lcn/cmgame/billing/api/a;->t:Z

    .line 1521
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1190
    sget-object v0, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/api/a;->j:Lcn/cmgame/billing/b/f;

    if-nez v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/cmgame/billing/api/a;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    sget-object v2, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    .line 1196
    sget-object v3, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    .line 1197
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aY()Ljava/lang/String;

    move-result-object v4

    .line 1198
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v5

    .line 1199
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v6

    .line 1200
    const-string v0, ""

    .line 1204
    :try_start_0
    const-string v7, "{0},{1},{2},{3},{4},{5},{6}"

    const/4 v8, 0x1

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v2, v9, v1

    const/4 v1, 0x2

    aput-object v3, v9, v1

    const/4 v1, 0x3

    aput-object v4, v9, v1

    const/4 v1, 0x4

    aput-object v5, v9, v1

    const/4 v1, 0x5

    aput-object v6, v9, v1

    const/4 v1, 0x6

    aput-object p1, v9, v1

    invoke-static {v7, v8, v9}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1208
    :goto_1
    invoke-direct {p0, v0}, Lcn/cmgame/billing/api/a;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v1

    .line 1206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected j(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    .line 1377
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 1413
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v2

    const-string v3, "40288000"

    const-string v5, "0"

    new-instance v6, Lcn/cmgame/billing/api/a$8;

    invoke-direct {v6, p0}, Lcn/cmgame/billing/api/a$8;-><init>(Lcn/cmgame/billing/api/a;)V

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcn/cmgame/billing/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/h$a;)V

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 1133
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    new-instance v1, Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    invoke-direct {v1}, Lcn/cmgame/sdk/network/NetworkChangeReceiver;-><init>()V

    iput-object v1, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    .line 1137
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1139
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->jN:Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    .line 1149
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Lcn/cmgame/billing/api/a;->z:Ljava/lang/String;

    .line 1565
    return-void
.end method

.method public m()V
    .locals 17

    .prologue
    .line 1155
    sget-object v1, Lcn/cmgame/billing/api/a;->e:Lcn/cmgame/billing/api/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/cmgame/billing/api/a;->j:Lcn/cmgame/billing/b/f;

    if-nez v1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const-string v1, ""

    .line 1163
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/cmgame/billing/api/a;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    new-instance v3, Landroid/webkit/WebView;

    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/cmgame/sdk/e/e;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v4}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcn/cmgame/billing/b/f;->aY()Ljava/lang/String;

    move-result-object v5

    .line 1169
    sget-object v6, Lcn/cmgame/billing/util/Const;->jn:Ljava/lang/String;

    .line 1170
    sget-object v7, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    .line 1171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1172
    const/4 v9, 0x0

    invoke-static {v9}, Lcn/cmgame/billing/api/a;->b(Z)Ljava/lang/String;

    move-result-object v9

    .line 1173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v10}, Lcn/cmgame/billing/b/a;->ax()Ljava/lang/String;

    move-result-object v10

    .line 1174
    invoke-static {}, Lcn/cmgame/billing/api/a;->g()Ljava/lang/String;

    move-result-object v11

    .line 1175
    invoke-static {}, Lcn/cmgame/billing/api/a;->h()Ljava/lang/String;

    move-result-object v12

    .line 1176
    const-string v13, "{0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14}"

    const/4 v14, 0x1

    const/16 v15, 0xf

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/4 v6, 0x1

    aput-object v7, v15, v6

    const/4 v6, 0x2

    aput-object v11, v15, v6

    const/4 v6, 0x3

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v7, v15, v6

    const/4 v6, 0x4

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v15, v6

    const/4 v6, 0x5

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v15, v6

    const/4 v6, 0x6

    aput-object v8, v15, v6

    const/4 v6, 0x7

    .line 1177
    aput-object v2, v15, v6

    const/16 v2, 0x8

    aput-object v3, v15, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v3}, Lcn/cmgame/billing/b/a;->aw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/16 v2, 0xa

    aput-object v4, v15, v2

    const/16 v2, 0xb

    aput-object v5, v15, v2

    const/16 v2, 0xc

    aput-object v10, v15, v2

    const/16 v2, 0xd

    aput-object v12, v15, v2

    const/16 v2, 0xe

    aput-object v9, v15, v2

    .line 1176
    invoke-static {v13, v14, v15}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1181
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcn/cmgame/billing/api/a;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1178
    :catch_0
    move-exception v2

    .line 1179
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final o()Lcn/cmgame/billing/b/a;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->k:Lcn/cmgame/billing/b/a;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->l:Ljava/util/List;

    return-object v0
.end method

.method public q()Lcn/cmgame/billing/a/c;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->m:Lcn/cmgame/billing/a/c;

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->n:Ljava/util/Map;

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->o:Ljava/util/Map;

    return-object v0
.end method

.method public x()Lcn/cmgame/billing/util/a;
    .locals 2

    .prologue
    .line 1485
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->v:Lcn/cmgame/billing/util/a;

    if-nez v0, :cond_0

    .line 1486
    new-instance v0, Lcn/cmgame/billing/util/a;

    iget-object v1, p0, Lcn/cmgame/billing/api/a;->eO:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/cmgame/billing/util/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/api/a;->v:Lcn/cmgame/billing/util/a;

    .line 1488
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->v:Lcn/cmgame/billing/util/a;

    return-object v0
.end method

.method public y()Lcn/cmgame/billing/b/f;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->j:Lcn/cmgame/billing/b/f;

    return-object v0
.end method

.method public z()Lcn/cmgame/billing/b/c;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcn/cmgame/billing/api/a;->r:Lcn/cmgame/billing/b/c;

    return-object v0
.end method
