.class public Lcom/infinit/multimode_billig/log/LogNet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinit/multimode_billig/log/LogNet$LogResult;
    }
.end annotation


# static fields
.field public static final URLSTR:Ljava/lang/String; = "http://uniview.wostore.cn/log-app/sendLog"

.field private static _$1:Lcom/infinit/multimode_billig/log/Parameters;

.field private static _$2:Lcom/infinit/multimode_billig/log/LogNet;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _$1()Lcom/infinit/multimode_billig/log/Parameters;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    return-object v0
.end method

.method static _$1(Lcom/infinit/multimode_billig/log/LogNet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/infinit/multimode_billig/log/LogNet;->_$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "false"

    goto :goto_0
.end method

.method public static getInstance()Lcom/infinit/multimode_billig/log/LogNet;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$2:Lcom/infinit/multimode_billig/log/LogNet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infinit/multimode_billig/log/LogNet;

    invoke-direct {v0}, Lcom/infinit/multimode_billig/log/LogNet;-><init>()V

    sput-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$2:Lcom/infinit/multimode_billig/log/LogNet;

    :cond_0
    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$2:Lcom/infinit/multimode_billig/log/LogNet;

    return-object v0
.end method

.method public static initParams(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/infinit/multimode_billig/log/Parameters;

    invoke-direct {v0}, Lcom/infinit/multimode_billig/log/Parameters;-><init>()V

    sput-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    invoke-virtual {v0}, Lcom/infinit/multimode_billig/log/Parameters;->clear()V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "imei"

    invoke-static {p0}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "imsi"

    invoke-static {p0}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "phone_company"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "phone_type"

    invoke-static {p0}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/infinit/multimode_billig/log/LogNet;->_$1:Lcom/infinit/multimode_billig/log/Parameters;

    const-string v1, "tel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/infinit/multimode_billig/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isNetWorkAvaible(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public UpLoadLogString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billig/log/LogNet$LogResult;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;-><init>(Lcom/infinit/multimode_billig/log/LogNet;Lcom/infinit/multimode_billig/log/LogNet$LogResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p4, v0}, Lcom/infinit/multimode_billig/log/LogNet$LogResult;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public UpdateHttpLog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/infinit/multimode_billig/log/IllllIIIllIlIllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/infinit/multimode_billig/log/IllllIIIllIlIllI;-><init>(Lcom/infinit/multimode_billig/log/LogNet;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billig/log/IllllIIIllIlIllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "xyf"

    const-string v2, "log upload failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public UpdateHttpMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/infinit/multimode_billig/log/lllllIIIllIlIllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/infinit/multimode_billig/log/lllllIIIllIlIllI;-><init>(Lcom/infinit/multimode_billig/log/LogNet;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billig/log/lllllIIIllIlIllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "xyf"

    const-string v2, "log upload failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public UploadLogWithoutResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billig/log/LogNet$LogResult;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/infinit/multimode_billig/log/lIlllIIIllIlIllI;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/infinit/multimode_billig/log/lIlllIIIllIlIllI;-><init>(Lcom/infinit/multimode_billig/log/LogNet;Lcom/infinit/multimode_billig/log/LogNet$LogResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billig/log/lIlllIIIllIlIllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p4, v0}, Lcom/infinit/multimode_billig/log/LogNet$LogResult;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
