.class public Lmm/purchasesdk/core/l/d;
.super Ljava/lang/Object;


# static fields
.field public static V:I

.field private static W:I

.field public static X:I

.field public static Y:I

.field private static Z:I

.field private static a:Landroid/os/Message;

.field private static aV:Ljava/lang/String;

.field private static aX:Ljava/lang/String;

.field private static ad:Ljava/lang/String;

.field private static bg:Ljava/lang/String;

.field private static bo:Ljava/lang/String;

.field private static bp:Ljava/lang/String;

.field private static bq:Ljava/lang/String;

.field private static br:Ljava/lang/String;

.field private static bs:Ljava/lang/String;

.field private static bt:Ljava/lang/String;

.field private static bu:Ljava/lang/String;

.field private static bv:Ljava/lang/String;

.field private static bw:Ljava/lang/String;

.field private static bx:Ljava/lang/String;

.field private static c:Landroid/os/Messenger;

.field private static c:Lmm/purchasesdk/core/b;

.field private static i:Ljava/lang/Boolean;

.field private static j:Ljava/lang/Boolean;

.field public static k:F

.field private static k:Ljava/lang/Boolean;

.field private static l:Ljava/lang/Boolean;

.field private static m:Ljava/lang/Boolean;

.field private static n:Ljava/lang/Boolean;

.field private static o:Ljava/lang/Boolean;

.field private static u:Z

.field private static v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lmm/purchasesdk/core/l/d;->v:Z

    const/4 v0, -0x1

    sput v0, Lmm/purchasesdk/core/l/d;->V:I

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bo:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->i:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->j:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->k:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->l:Ljava/lang/Boolean;

    sput-object v2, Lmm/purchasesdk/core/l/d;->bp:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lmm/purchasesdk/core/l/d;->bq:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->br:Ljava/lang/String;

    sput-object v2, Lmm/purchasesdk/core/l/d;->aV:Ljava/lang/String;

    sput v1, Lmm/purchasesdk/core/l/d;->W:I

    sput-object v2, Lmm/purchasesdk/core/l/d;->aX:Ljava/lang/String;

    sput-object v2, Lmm/purchasesdk/core/l/d;->bs:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->m:Ljava/lang/Boolean;

    const-string v0, "0"

    sput-object v0, Lmm/purchasesdk/core/l/d;->ad:Ljava/lang/String;

    sput-object v2, Lmm/purchasesdk/core/l/d;->bt:Ljava/lang/String;

    sput-object v2, Lmm/purchasesdk/core/l/d;->bu:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bv:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->n:Ljava/lang/Boolean;

    sput-boolean v1, Lmm/purchasesdk/core/l/d;->u:Z

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bw:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bx:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public static M(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->aX:Ljava/lang/String;

    return-void
.end method

.method public static N()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bv:Ljava/lang/String;

    return-object v0
.end method

.method public static O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bt:Ljava/lang/String;

    return-object v0
.end method

.method public static P()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->br:Ljava/lang/String;

    return-object v0
.end method

.method public static Q()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sget-object v0, Lmm/purchasesdk/core/l/d;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmm/purchasesdk/core/l/d;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "2"

    goto :goto_0

    :cond_1
    const-string v0, "4"

    goto :goto_0
.end method

.method public static R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bp:Ljava/lang/String;

    return-object v0
.end method

.method public static S()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public static T()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bw:Ljava/lang/String;

    return-object v0
.end method

.method public static U()Ljava/lang/String;
    .locals 5

    const-string v0, "http://ospd.mmarket.com:80/taac"

    const-string v1, "http://211.139.191.223:22222/trust"

    const/4 v1, 0x0

    const-string v2, "MMBillingSDk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copyright url-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/core/l/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static V()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WifiPreference IpAddress"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static W()Ljava/lang/String;
    .locals 1

    const-string v0, "ospd.mmarket.com"

    return-object v0
.end method

.method public static X()Ljava/lang/String;
    .locals 1

    const-string v0, "80"

    return-object v0
.end method

.method public static Y()Ljava/lang/String;
    .locals 2

    const-string v0, "MIICZzCCAdKgAwIBAgIDNJv2MAsGCSqGSIb3DQEBBTAzMQswCQYDVQQGEwJDTjEkMCIGA1UEAwwbQ01DQSBhcHBsaWNhdGlvbiBzaWduaW5nIENBMB4XDTExMDMyNDAyMjExOFoXDTMxMDMyNDAyMjExOFowXjELMAkGA1UEBhMCQ04xMzAxBgNVBAMMKuS4reWbveenu+WKqOe7iOerr+W6lOeUqOeJiOadg+S/neaKpOWjsOaYjjEaMBgGA1UEBRMRMjAxMTAzMjQxMDI0MjIyMjUwgZ0wCwYJKoZIhvcNAQEBA4GNADCBiQKBgQDb7UlB5k4kdWACNBmHM+Dw9NSD0Q4o7CR3gTaciZQlXeoCCwuYSAWuhoI5ujQsM47eH12OlIn2IwKYObwa6iVY6CLVnEhPkqQfLXPNCoOI+fFdKqLO1YD0+RRj+4oUXi7vAVBEASeyhZesT8P6m2nPpiExlZjDqJYzX/MKYcIkvwIDAQABo2QwYjATBgNVHSUEDDAKBggrBgEFBQcDAzAfBgNVHSMEGDAWgBSXIbIlzOk/0qZTaEGW5ldxZ9uyjTALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFDTw9zOSP/ZHrahKl9qApKmRNJZiMAsGCSqGSIb3DQEBBQOBgQB6KJgdTQoNXy4xErgbtiRXz7L+J05HM3K6ZFBUE4/cOFcEXiEuu2YekT+pAZcPm2A6iRdYSKo7LCMIDEZUXdMKzTzkxmk39wy05QAyS6QjW8AWp9A9ufvd741IOnjnRGfN4hzuxPjRHEG86T/+nkmYkVgl7gfLJ7mBpyRNKkzIDg=="

    const-string v1, "MIICHzCCAYqgAwIBAgIDKv82MAsGCSqGSIb3DQEBBTAgMQswCQYDVQQGEwJDTjERMA8GA1UEAwwI5Liq5Lq6Y2EwHhcNMTEwMjI4MDYxNjI5WhcNMTIwMjI4MDYxNjI5WjA+MQswCQYDVQQGEwJDTjETMBEGA1UEAwwKVEFBQ+ivgeS5pjEaMBgGA1UEBRMRMjAxMTAyMjgxNDAyMTM4MTgwgZ0wCwYJKoZIhvcNAQEBA4GNADCBiQKBgQCm6Cad72saOqtcMImCjJH7LT2Ok23xIzFNWlxrmZ07gm3RyJQnRhfRTInG9s7o27thctvrgb0/+rylbpYxakI44KRXsCMv/sMSJAVdaf/ya+urG0dLxWWpCaukwHWrD/SZXAfEJsHG0d0PHiiDfgk6nRIwP2LgiQxFIyaSiFrWewIDAQABo08wTTAfBgNVHSMEGDAWgBR6++/VpoG/QEkeqkozsujjFkbT9jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFNU6DXct6mOIJo6zczeFrUjhf9NkMAsGCSqGSIb3DQEBBQOBgQAPd2Es1pFitJvw5BVDi7fnYY78MW+/+Mw+DaJ+Ufu1W5+TvPL1aHCBI024Hfvwbhl8Va9Z+vSq4EK1TenQiTH91yb/qSBVjj2MyvCiMiRi+do4rCZ4bCSrUz3VYNzpC5l62pjbhOcZqT2+0kvFvUJcZT8Xz/bjk4EsL/7dPqYXFA=="

    return-object v0
.end method

.method public static Y(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bs:Ljava/lang/String;

    return-void
.end method

.method public static Z()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bg:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/os/Messenger;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->c:Landroid/os/Messenger;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmm/purchasesdk/core/l/d;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lmm/purchasesdk/fingerprint/IdentifyApp;->generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lmm/purchasesdk/core/b;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->c:Lmm/purchasesdk/core/b;

    return-object v0
.end method

.method public static a(Landroid/os/Message;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->a:Landroid/os/Message;

    return-void
.end method

.method public static declared-synchronized a(I)Z
    .locals 2

    const-class v0, Lmm/purchasesdk/core/l/d;

    monitor-enter v0

    :try_start_0
    sput p0, Lmm/purchasesdk/core/l/d;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static aa()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static aa(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bv:Ljava/lang/String;

    return-void
.end method

.method public static ab()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static ab(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bt:Ljava/lang/String;

    return-void
.end method

.method public static ac(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bu:Ljava/lang/String;

    return-void
.end method

.method public static ad(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->br:Ljava/lang/String;

    return-void
.end method

.method public static ae(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bp:Ljava/lang/String;

    return-void
.end method

.method public static af(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bq:Ljava/lang/String;

    return-void
.end method

.method public static ag(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bw:Ljava/lang/String;

    return-void
.end method

.method public static ah(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->bx:Ljava/lang/String;

    return-void
.end method

.method public static ai(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->o:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->o:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static c(Landroid/os/Messenger;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->c:Landroid/os/Messenger;

    return-void
.end method

.method public static d()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static d(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->m:Ljava/lang/Boolean;

    return-void
.end method

.method public static e()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v1, ""

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_2

    aget-byte v0, v3, v2

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    const/16 v5, 0x10

    if-ge v0, v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "555"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static e(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public static enableCache(Z)V
    .locals 0

    sput-boolean p0, Lmm/purchasesdk/core/l/d;->u:Z

    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, Lmm/purchasesdk/core/l/d;->Z:I

    return v0
.end method

.method public static f()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static f(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lmm/purchasesdk/core/l/d;->u:Z

    return v0
.end method

.method public static g()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static g(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static g(Lmm/purchasesdk/core/b;)V
    .locals 0

    sput-object p0, Lmm/purchasesdk/core/l/d;->c:Lmm/purchasesdk/core/b;

    return-void
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/l/d;->bx:Ljava/lang/String;

    return-object v0
.end method

.method public static h(I)V
    .locals 0

    sput p0, Lmm/purchasesdk/core/l/d;->Z:I

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 6

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {}, Lmm/purchasesdk/core/l/d;->reset()V

    invoke-static {}, Lmm/purchasesdk/core/ui/am;->q()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lmm/purchasesdk/core/l/d;->k:F

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lmm/purchasesdk/core/l/d;->Y:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lmm/purchasesdk/core/l/d;->X:I

    sget v0, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->E:I

    sget v0, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->F:I

    sget v0, Lmm/purchasesdk/core/l/d;->X:I

    sget v1, Lmm/purchasesdk/core/ui/am;->E:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->C:I

    sget v0, Lmm/purchasesdk/core/l/d;->Y:I

    sget v1, Lmm/purchasesdk/core/ui/am;->F:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->D:I

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    const/4 v0, 0x5

    sput v0, Lmm/purchasesdk/core/ui/am;->L:I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget v0, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v0, v0

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->d:F

    const/high16 v0, 0x421c0000    # 39.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->f:F

    sget v0, Lmm/purchasesdk/core/ui/am;->f:F

    sget v1, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->M:I

    const/high16 v0, 0x41f80000    # 31.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->c:F

    sget v0, Lmm/purchasesdk/core/ui/am;->c:F

    sget v1, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->G:I

    sget v0, Lmm/purchasesdk/core/l/d;->X:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x320

    int-to-float v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->P:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->P:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->O:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->O:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->L:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->L:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->N:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->N:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    sget v0, Lmm/purchasesdk/core/ui/am;->j:F

    sget v1, Lmm/purchasesdk/core/ui/am;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->j:F

    sget v0, Lmm/purchasesdk/core/ui/am;->h:F

    sget v1, Lmm/purchasesdk/core/ui/am;->e:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lmm/purchasesdk/core/ui/am;->h:F

    sget v0, Lmm/purchasesdk/core/ui/am;->i:F

    sget v1, Lmm/purchasesdk/core/ui/am;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->i:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->d:F

    const/high16 v0, 0x42280000    # 42.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->f:F

    sget v0, Lmm/purchasesdk/core/ui/am;->f:F

    sget v1, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->M:I

    const/high16 v0, 0x420c0000    # 35.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->c:F

    sget v0, Lmm/purchasesdk/core/ui/am;->c:F

    sget v1, Lmm/purchasesdk/core/l/d;->Y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->G:I

    sget v0, Lmm/purchasesdk/core/l/d;->Y:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x320

    int-to-float v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->P:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->P:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->O:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->O:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->L:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->L:I

    sget v0, Lmm/purchasesdk/core/ui/am;->e:F

    sget v1, Lmm/purchasesdk/core/ui/am;->N:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lmm/purchasesdk/core/ui/am;->N:I

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    sget v0, Lmm/purchasesdk/core/ui/am;->j:F

    sget v1, Lmm/purchasesdk/core/ui/am;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->j:F

    sget v0, Lmm/purchasesdk/core/ui/am;->h:F

    sget v1, Lmm/purchasesdk/core/ui/am;->e:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lmm/purchasesdk/core/ui/am;->h:F

    sget v0, Lmm/purchasesdk/core/ui/am;->i:F

    sget v1, Lmm/purchasesdk/core/ui/am;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/purchasesdk/core/ui/am;->i:F

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MMBillingSDk"

    const-string v1, "network not exists, pls check network"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    const-string v0, "http://ospd.mmarket.com:80/trust"

    const-string v1, "http://211.139.191.223:22222/trust"

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static r()V
    .locals 2

    const-string v0, "Global"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lmm/purchasesdk/core/l/d;->bo:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lmm/purchasesdk/core/l/d;->ad:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->j:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/l/d;->o:Ljava/lang/Boolean;

    invoke-static {}, Lmm/purchasesdk/core/l/d;->reset()V

    return-void
.end method

.method private static reset()V
    .locals 3

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v0, 0xa

    sput v0, Lmm/purchasesdk/core/ui/am;->P:I

    sput v0, Lmm/purchasesdk/core/ui/am;->O:I

    sput v0, Lmm/purchasesdk/core/ui/am;->L:I

    const/16 v0, 0x14

    sput v0, Lmm/purchasesdk/core/ui/am;->N:I

    sput v1, Lmm/purchasesdk/core/ui/am;->f:F

    sput v1, Lmm/purchasesdk/core/ui/am;->d:F

    sput v2, Lmm/purchasesdk/core/ui/am;->g:F

    const/high16 v0, 0x41700000    # 15.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->h:F

    sput v2, Lmm/purchasesdk/core/ui/am;->i:F

    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->j:F

    return-void
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MMBillingSDk"

    const-string v1, "network not exists, pls check network"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v0, "GPRS"

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MMBillingSDk"

    const-string v1, "network not exists, pls check network"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    const-string v0, "http://ospd.mmarket.com:80/trusted3"

    const-string v1, "http://211.139.191.223:22222/trusted3"

    goto :goto_0
.end method

.method public static declared-synchronized unlock()V
    .locals 2

    const-class v1, Lmm/purchasesdk/core/l/d;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lmm/purchasesdk/core/l/d;->v:Z

    const/4 v0, -0x1

    sput v0, Lmm/purchasesdk/core/l/d;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
