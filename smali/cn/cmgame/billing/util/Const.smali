.class public Lcn/cmgame/billing/util/Const;
.super Lcn/cmgame/sdk/e/b;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/util/Const$a;,
        Lcn/cmgame/billing/util/Const$b;,
        Lcn/cmgame/billing/util/Const$c;,
        Lcn/cmgame/billing/util/Const$BillingResult;,
        Lcn/cmgame/billing/util/Const$BillingType;,
        Lcn/cmgame/billing/util/Const$d;,
        Lcn/cmgame/billing/util/Const$e;,
        Lcn/cmgame/billing/util/Const$f;
    }
.end annotation


# static fields
.field public static final cH:I = -0x3

.field public static final fA:Ljava/lang/String; = "starting_flag_"

.field public static final fB:Ljava/lang/String; = "game_data"

.field public static final fC:Ljava/lang/String; = "counter_flag_"

.field public static final fD:Ljava/lang/String; = "ro_flag_"

.field public static final fE:Ljava/lang/String; = "Charge.xml"

.field public static final fF:Ljava/lang/String; = "ChargeCMGC.xml"

.field public static final fG:Ljava/lang/String; = "Config.xml"

.field public static final fH:Ljava/lang/String; = "ConsumeCodeInfo.xml"

.field public static final fI:Ljava/lang/String; = "CMGC/ConfigExtend.xml"

.field public static final fJ:Ljava/lang/String; = "consumercodelist"

.field public static final fK:Ljava/lang/String; = "1"

.field public static final fL:Ljava/lang/String; = "2"

.field public static final fM:Ljava/lang/String; = "000000000000"

.field public static final fN:Ljava/lang/String; = "03"

.field public static final fO:Ljava/lang/String; = "GH_DEFAULT"

.field public static final fP:Ljava/lang/String; = "40288000"

.field public static final fQ:Ljava/lang/String; = "HTC_Desire"

.field public static final fR:Ljava/lang/String; = "||Emag@12"

.field public static final fS:Ljava/lang/String; = "27"

.field public static final fT:Ljava/lang/String; = "28"

.field public static final fU:Ljava/lang/String; = "30"

.field public static final fV:Ljava/lang/String; = "cn.emagsoftware.gamehall"

.field public static final fW:Ljava/lang/String; = "GameHall"

.field public static final fX:Ljava/lang/String; = "GH.apk"

.field public static final fY:Ljava/lang/String; = "CMGC/GH.data"

.field public static final fZ:Ljava/lang/String; = "500230544000"

.field public static final fu:Ljava/lang/String; = "http://gmc.g188.net/egsb/"

.field public static final fv:Ljava/lang/String; = "http://gmc.g188.net/egsb/SMSCharging/sendChargingCode"

.field public static final fw:Ljava/lang/String; = "http://g.10086.cn/eguc"

.field public static final fx:Ljava/lang/String; = "http://omsjf.cmgame.com/charging/log/accessGameLog?random="

.field public static final fy:Ljava/lang/String; = "http://g.10086.cn/a/?dotype=ad3wj"

.field public static final fz:Ljava/lang/String; = "cmgc_data_flag_"

.field public static final ga:Ljava/lang/String; = "10658422"

.field public static final gb:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final gc:Ljava/lang/String; = "_PATH"

.field public static final gd:Ljava/lang/String; = "MILLIS"

.field public static final ge:Ljava/lang/String; = "game_ids"

.field public static final gf:Ljava/lang/String; = "LAST_TIME"

.field public static final gg:Ljava/lang/String; = "last_logged_in_account"

.field public static final gh:Ljava/lang/String; = "is_remember_account"

.field public static final gi:Ljava/lang/String; = "_TOKEN"

.field public static final gj:Ljava/lang/String; = "_IMSI"

.field public static gk:Ljava/lang/String; = null

.field public static final gl:I = 0x3

.field public static final gm:I = 0x3

.field public static final gn:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, ""

    sput-object v0, Lcn/cmgame/billing/util/Const;->gk:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/cmgame/sdk/e/b;-><init>()V

    return-void
.end method
