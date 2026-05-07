.class public Lcn/cmgame/sdk/e/b;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/sdk/e/b$a;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "2.0.0.4"

.field public static gk:Ljava/lang/String; = null

.field public static final hL:Ljava/lang/String; = "GET"

.field public static final hM:Ljava/lang/String; = "POST"

.field public static final iU:I = -0x1

.field public static final iV:I = 0x0

.field public static final iW:Ljava/lang/String; = "http://g.10086.cn/a/?utm=pl3"

.field public static final iX:Ljava/lang/String; = "http://g.10086.cn/gamecms/go/sdyxdt"

.field public static final iY:Ljava/lang/String; = "10.0.0.172"

.field public static final iZ:Ljava/lang/String; = "DELETE"

.field public static final ja:Ljava/lang/String; = "PUT"

.field public static final jb:Ljava/lang/String; = "UTF-8"

.field public static final jc:Ljava/lang/String; = "Content-Type"

.field public static final jd:Ljava/lang/String; = "Content-Length"

.field public static final je:Ljava/lang/String; = "hRet"

.field public static final jf:Ljava/lang/String; = "cmcc_emag"

.field public static final jg:Ljava/lang/String; = "status"

.field public static final jh:Ljava/lang/String; = "0"

.field public static final ji:Ljava/lang/String; = "@@@@@@@@@"

.field public static final jj:Ljava/lang/String; = "1.1"

.field public static final jk:Ljava/lang/String; = "Android"

.field public static final jl:Ljava/lang/String; = "XML"

.field public static jm:Ljava/lang/String;

.field public static jn:Ljava/lang/String;

.field public static final jo:Ljava/text/DateFormat;

.field public static final jp:Ljava/text/DateFormat;

.field public static final jq:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    sput-object v0, Lcn/cmgame/sdk/e/b;->jm:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcn/cmgame/sdk/e/b;->jn:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcn/cmgame/sdk/e/b;->gk:Ljava/lang/String;

    .line 83
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->br(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/b;->jo:Ljava/text/DateFormat;

    .line 85
    const-string v0, "yy\u5e74M\u6708d\u65e5HH:mm"

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->br(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/b;->jp:Ljava/text/DateFormat;

    .line 87
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->br(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/b;->jq:Ljava/text/DateFormat;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
