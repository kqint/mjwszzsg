.class public Lcom/gamedo/v360/SmsSdk;
.super Ljava/lang/Object;
.source "SmsSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamedo/v360/SmsSdk$AccessNetwork;,
        Lcom/gamedo/v360/SmsSdk$MsgCallBack;,
        Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;,
        Lcom/gamedo/v360/SmsSdk$UserBillSwitch;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "300002909472"

.field private static final APPKEY:Ljava/lang/String; = "15B1CA56A815FB29"

.field public static ICCID:Ljava/lang/String; = null

.field public static _UserBillSwitch:Ljava/lang/String; = null

.field static cpName:Ljava/lang/String; = null

.field static cpPhone:Ljava/lang/String; = null

.field public static gameId:Ljava/lang/String; = null

.field static gameName:Ljava/lang/String; = null

.field public static imei:Ljava/lang/String; = null

.field public static imsi:Ljava/lang/String; = null

.field static instance:Lcom/gamedo/v360/SmsSdk; = null

.field public static isSendMes:Z = false

.field static mmjifeidaima:[Ljava/lang/String; = null

.field public static mobType:Ljava/lang/String; = null

.field public static netMode:Ljava/lang/String; = null

.field public static final payCancel:I = 0x3

.field public static final payFail:I = 0x1

.field public static final paySucces:I = 0x0

.field public static purchase:Lmm/purchasesdk/Purchase; = null

.field private static final result:I = 0x2713

.field private static final sdk_DX:I = 0x2714

.field private static final sdk_LT:I = 0x2712

.field private static final sdk_MM:I = 0x2719

.field private static final sdk_YD:I = 0x2711

.field public static seqnume:Ljava/lang/String; = null

.field public static smsDxData:[[Ljava/lang/String; = null

.field public static final smsDxData_code:I = 0x1

.field public static final smsDxData_mes1:I = 0x2

.field public static final smsDxData_mes2:I = 0x3

.field public static final smsDxData_name:I = 0x0

.field public static final smsDxData_type:I = 0x4

.field public static final smsLtDate:[[Ljava/lang/String;

.field public static final smsYdData:[Ljava/lang/String;

.field public static smscenter:Ljava/lang/String;

.field public static sysversion:Ljava/lang/String;

.field public static telephoneNumber:Ljava/lang/String;


# instance fields
.field private DonBillUrl:Ljava/lang/String;

.field public PayId:I

.field private UserBillSwitchUrl:Ljava/lang/String;

.field private _active:Landroid/app/Activity;

.field private _isSend:Z

.field billingCallback:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

.field private channelId:Ljava/lang/String;

.field private defultStr:Ljava/lang/String;

.field final h:Landroid/os/Handler;

.field public mListener:Lcom/gamedo/v360/IAPListener;

.field private operatorId:I

.field private productId:Ljava/lang/String;

.field private provinceId:I

.field private smsStr:Ljava/lang/String;

.field private userUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    .line 51
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u6fc0\u6d3b\u6e38\u620f\u9001\u5927\u793c"

    aput-object v2, v1, v4

    const-string v2, "4.0"

    aput-object v2, v1, v5

    const-string v2, "130802008016"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 52
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u8d22\u6e90\u6eda\u6eda\u723d\u5230\u7206"

    aput-object v2, v1, v4

    const-string v2, "2.0"

    aput-object v2, v1, v5

    const-string v2, "130802008017"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 53
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u949c\u60e0\u793c\u5305\u52a9\u60a8\u5347\u7ea7"

    aput-object v2, v1, v4

    const-string v2, "2.0"

    aput-object v2, v1, v5

    const-string v2, "130802008018"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 54
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u6fc0\u6d3b\u540d\u5c06\u5f3a\u52bf\u5165\u961f"

    aput-object v2, v1, v4

    const-string v2, "2.0"

    aput-object v2, v1, v5

    const-string v2, "130802008019"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    .line 55
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u6253\u6298\u51fa\u552e\u6bcf\u65e5\u7279\u60e0"

    aput-object v2, v1, v4

    const-string v2, "2.0"

    aput-object v2, v1, v5

    const-string v2, "130802008020"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 56
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u4e0a\u53e4\u73cd\u5b9d\u624b\u5230\u64d2\u6765"

    aput-object v3, v2, v4

    const-string v3, "2.0"

    aput-object v3, v2, v5

    const-string v3, "130802008021"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 57
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u539f\u5730\u590d\u6d3b\u8f7b\u677e\u8fc7\u5173"

    aput-object v3, v2, v4

    const-string v3, "2.0"

    aput-object v3, v2, v5

    const-string v3, "130802008022"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 50
    sput-object v0, Lcom/gamedo/v360/SmsSdk;->smsLtDate:[[Ljava/lang/String;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    .line 62
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 63
    const-string v2, "\u5173\u5361\u6fc0\u6d3b"

    aput-object v2, v1, v4

    .line 64
    const-string v2, "0411C1108711022216976711022216907801MC099584000000000000000000000000"

    aput-object v2, v1, v5

    .line 65
    const-string v2, "\u5173\u5361\u6fc0\u6d3b,\u4fe1\u606f\u8d394\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c4\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v2, v1, v6

    .line 66
    const-string v2, "\u53d1\u9001\u6210\u529f!\u5df2\u6210\u529f\u6fc0\u6d3b!"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    .line 67
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u8d2d\u4e70\u91d1\u94b1"

    aput-object v2, v1, v4

    const-string v2, "0211C1108711022216976711022216907901MC099584000000000000000000000000"

    aput-object v2, v1, v5

    const-string v2, "\u8d2d\u4e70\u91d1\u94b1,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v2, v1, v6

    const-string v2, "\u53d1\u9001\u6210\u529f\uff0120000\u91d1\u94b1\u5df2\u83b7\u5f97\u3002"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    .line 68
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u8d2d\u4e70\u7279\u60e0\u5927\u793c\u5305"

    aput-object v2, v1, v4

    const-string v2, "0211C1108711022216976711022216908001MC099584000000000000000000000000"

    aput-object v2, v1, v5

    const-string v2, "\u8d2d\u4e70\u7279\u60e0\u5927\u793c\u5305,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v2, v1, v6

    const-string v2, "\u53d1\u9001\u6210\u529f\uff01\u7279\u60e0\u5927\u793c\u5305\u5df2\u83b7\u5f97\uff01"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6fc0\u6d3b\u6b66\u5c06"

    aput-object v2, v1, v4

    const-string v2, "0211C1108711022216976711022216908101MC099584000000000000000000000000"

    aput-object v2, v1, v5

    const-string v2, "\u6fc0\u6d3b\u6b66\u5c06,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v2, v1, v6

    const-string v2, "\u53d1\u9001\u6210\u529f\uff01\u6240\u9009\u6b66\u5c06\u5df2\u6fc0\u6d3b\uff01"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    .line 70
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u8d2d\u4e70\u6bcf\u65e5\u7279\u60e0\u793c\u5305"

    aput-object v2, v1, v4

    const-string v2, "0211C1108711022216976711022216908201MC099584000000000000000000000000"

    aput-object v2, v1, v5

    const-string v2, "\u8d2d\u4e70\u6bcf\u65e5\u7279\u60e0\u793c\u5305,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v2, v1, v6

    const-string v2, "\u53d1\u9001\u6210\u529f!"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 71
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u8d2d\u4e70\u73cd\u5b9d"

    aput-object v3, v2, v4

    const-string v3, "0211C1108711022216976711022216908301MC099584000000000000000000000000"

    aput-object v3, v2, v5

    const-string v3, "\u8d2d\u4e70\u73cd\u5b9d,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v3, v2, v6

    const-string v3, "\u53d1\u9001\u6210\u529f\uff01\u6240\u9009\u73cd\u5b9d\u5df2\u83b7\u5f97\uff01"

    aput-object v3, v2, v7

    const-string v3, "0"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u539f\u5730\u590d\u6d3b"

    aput-object v3, v2, v4

    const-string v3, "0211C1108711022216976711022216908401MC099584000000000000000000000000"

    aput-object v3, v2, v5

    const-string v3, "\u539f\u5730\u590d\u6d3b,\u4fe1\u606f\u8d392\u5143,\u901a\u8fc7\u77ed\u4fe1\u4ee3\u6536\uff0c2\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\u8d2d\u4e70?"

    aput-object v3, v2, v6

    const-string v3, "\u53d1\u9001\u6210\u529f\uff01\u539f\u5730\u590d\u6d3b\u5df2\u8d2d\u4e70\uff0c\u5e76\u8d60\u90015000\u91d1\u94b1"

    aput-object v3, v2, v7

    const-string v3, "0"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/gamedo/v360/SmsSdk;->smsDxData:[[Ljava/lang/String;

    .line 82
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "000"

    aput-object v1, v0, v4

    const-string v1, "001"

    aput-object v1, v0, v5

    const-string v1, "002"

    aput-object v1, v0, v6

    const-string v1, "003"

    aput-object v1, v0, v7

    const-string v1, "004"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "007"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "008"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "009"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "012"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->smsYdData:[Ljava/lang/String;

    .line 84
    const-string v0, "\u638c\u4e0a\u7eb5\u6a2a\u4fe1\u606f\u6280\u672f\uff08\u5317\u4eac\uff09\u6709\u9650\u516c\u53f8"

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->cpName:Ljava/lang/String;

    .line 85
    const-string v0, "010\uff0d59005861"

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->cpPhone:Ljava/lang/String;

    .line 86
    const-string v0, "\u6218\u4e09\u56fd"

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->gameName:Ljava/lang/String;

    .line 87
    const-string v0, "100001"

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->gameId:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    .line 219
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    const-string v1, "30000290947201"

    aput-object v1, v0, v4

    .line 221
    const-string v1, "30000290947202"

    aput-object v1, v0, v5

    .line 222
    const-string v1, "30000290947203"

    aput-object v1, v0, v6

    .line 223
    const-string v1, "30000290947204"

    aput-object v1, v0, v7

    .line 224
    const-string v1, "30000290947205"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 225
    const-string v2, "30000290947206"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 226
    const-string v2, "30000290947207"

    aput-object v2, v0, v1

    .line 219
    sput-object v0, Lcom/gamedo/v360/SmsSdk;->mmjifeidaima:[Ljava/lang/String;

    .line 754
    sput-boolean v4, Lcom/gamedo/v360/SmsSdk;->isSendMes:Z

    .line 777
    const-string v0, "0"

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->_UserBillSwitch:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "1001"

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    .line 48
    const-string v0, "14000019"

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamedo/v360/SmsSdk;->_isSend:Z

    .line 134
    new-instance v0, Lcom/gamedo/v360/SmsSdk$1;

    invoke-direct {v0, p0}, Lcom/gamedo/v360/SmsSdk$1;-><init>(Lcom/gamedo/v360/SmsSdk;)V

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    .line 422
    new-instance v0, Lcom/gamedo/v360/SmsSdk$2;

    invoke-direct {v0, p0}, Lcom/gamedo/v360/SmsSdk$2;-><init>(Lcom/gamedo/v360/SmsSdk;)V

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->billingCallback:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    .line 601
    const-string v0, "http://121.14.211.49:8961/UserDoneBillInterface.aspx"

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->DonBillUrl:Ljava/lang/String;

    .line 684
    const-string v0, "http://121.14.211.49:8961/UserInterface.aspx"

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->userUrl:Ljava/lang/String;

    .line 776
    const-string v0, "http://121.14.211.49:8961/UserBillSwitch.aspx"

    iput-object v0, p0, Lcom/gamedo/v360/SmsSdk;->UserBillSwitchUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static InitSmsSdk(Landroid/app/Activity;)Lcom/gamedo/v360/SmsSdk;
    .locals 1
    .param p0, "_active"    # Landroid/app/Activity;

    .prologue
    .line 573
    new-instance v0, Lcom/gamedo/v360/SmsSdk;

    invoke-direct {v0}, Lcom/gamedo/v360/SmsSdk;-><init>()V

    sput-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    .line 574
    sget-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    invoke-virtual {v0, p0}, Lcom/gamedo/v360/SmsSdk;->init(Landroid/app/Activity;)V

    .line 575
    sget-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    return-object v0
.end method

.method static synthetic access$0(Lcom/gamedo/v360/SmsSdk;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk;->_active:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamedo/v360/SmsSdk;Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/gamedo/v360/SmsSdk;->_isSend:Z

    return-void
.end method

.method public static getInstance()Lcom/gamedo/v360/SmsSdk;
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    .line 564
    :goto_0
    return-object v0

    .line 562
    :cond_0
    const-string v0, "init"

    const-string v1, "instance==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDefultStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk;->defultStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    return v0
.end method

.method public getSmsStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk;->smsStr:Ljava/lang/String;

    return-object v0
.end method

.method public get_active()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk;->_active:Landroid/app/Activity;

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 26
    .param p1, "_active"    # Landroid/app/Activity;

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/gamedo/v360/SmsSdk;->set_active(Landroid/app/Activity;)V

    .line 232
    const-string v21, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 231
    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 234
    .local v15, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    const-string v21, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 233
    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 236
    .local v20, "tm":Landroid/telephony/TelephonyManager;
    const-string v21, ""

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->telephoneNumber:Ljava/lang/String;

    .line 239
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    .line 242
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->sysversion:Ljava/lang/String;

    .line 245
    const-string v21, ""

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    .line 247
    const-string v21, ""

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    .line 248
    const-string v21, ""

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    .line 250
    const-string v21, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 249
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 252
    .local v7, "connManager":Landroid/net/ConnectivityManager;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 253
    .local v16, "mWifi":Landroid/net/NetworkInfo;
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    if-nez v21, :cond_3

    const-string v21, ""

    :goto_0
    sput-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    .line 254
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 255
    const-string v21, "1"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->netMode:Ljava/lang/String;

    .line 266
    :goto_1
    const-string v21, "000000"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    .line 267
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyyMMddhhmmss"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v10, "format2":Ljava/text/SimpleDateFormat;
    new-instance v21, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/sql/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->seqnume:Ljava/lang/String;

    .line 271
    invoke-static/range {p1 .. p1}, Lcom/gamedo/v360/SmsUtil;->getMobileType(Landroid/content/Context;)I

    move-result v21

    .line 269
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    .line 272
    const-string v21, "operatorId"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "<----------"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "---------->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .local v13, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v21, "command"

    const-string v22, "getbill/billcode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v21, "protocolType"

    const-string v22, "request"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v21, "protocol"

    const-string v22, "2.0.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v6, "clientInfo":Lorg/json/JSONObject;
    const-string v21, "productId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v21, "channelId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v21, "clientInfo"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v17, "mobileInfo":Lorg/json/JSONObject;
    const-string v21, "model"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v21, "imei"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v21, "smsCenter"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v21, "imsi"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v21, "iccid"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v21, "mobileInfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v21, "operatorId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v6    # "clientInfo":Lorg/json/JSONObject;
    .end local v17    # "mobileInfo":Lorg/json/JSONObject;
    :goto_2
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/gamedo/v360/SmsSdk$AccessNetwork;

    const-string v23, "POST"

    .line 295
    const-string v24, "http://121.14.211.49:8961/SingleInterfaceV2.aspx"

    .line 296
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gamedo/v360/SmsSdk$AccessNetwork;-><init>(Lcom/gamedo/v360/SmsSdk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 299
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "fuck0"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .local v14, "jsonObject1":Lorg/json/JSONObject;
    :try_start_1
    const-string v21, "command"

    const-string v22, "getbill/billcode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v21, "protocolType"

    const-string v22, "request"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v21, "protocol"

    const-string v22, "2.0.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .restart local v6    # "clientInfo":Lorg/json/JSONObject;
    const-string v21, "productId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v21, "channelId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v21, "clientInfo"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .restart local v17    # "mobileInfo":Lorg/json/JSONObject;
    const-string v21, "model"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v21, "imei"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v21, "smsCenter"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v21, "imsi"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v21, "iccid"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v21, "operatorId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v21, "mobileInfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    .end local v6    # "clientInfo":Lorg/json/JSONObject;
    .end local v17    # "mobileInfo":Lorg/json/JSONObject;
    :goto_3
    const-string v21, "http://121.14.211.49:8961/GetBillTypeByICCID.aspx"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 323
    .local v18, "str":Ljava/lang/String;
    const/16 v19, 0x1

    .line 324
    .local v19, "tempkind":I
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "fuck1"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    if-eqz v18, :cond_0

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 327
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 328
    .local v12, "jsonObj":Lorg/json/JSONObject;
    const-string v21, "result"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 329
    .local v5, "_j":Lorg/json/JSONObject;
    const-string v21, "billtype"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    .line 335
    .end local v5    # "_j":Lorg/json/JSONObject;
    .end local v12    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_4
    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 336
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    .line 342
    .end local v14    # "jsonObject1":Lorg/json/JSONObject;
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "tempkind":I
    :cond_1
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "operatorId=="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "operatorId="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 350
    invoke-static/range {p1 .. p1}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    .line 393
    :cond_2
    :goto_5
    new-instance v13, Lorg/json/JSONObject;

    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 395
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :try_start_3
    const-string v21, "command"

    const-string v22, "getbill/billcode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v21, "protocolType"

    const-string v22, "request"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v21, "protocol"

    const-string v22, "1.0.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .restart local v6    # "clientInfo":Lorg/json/JSONObject;
    const-string v21, "productId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v21, "channelId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v21, "clientInfo"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 403
    .restart local v17    # "mobileInfo":Lorg/json/JSONObject;
    const-string v21, "model"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v21, "imei"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v21, "smsCenter"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v21, "imsi"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v21, "iccid"

    sget-object v22, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v21, "mobileInfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 413
    .end local v6    # "clientInfo":Lorg/json/JSONObject;
    .end local v17    # "mobileInfo":Lorg/json/JSONObject;
    :goto_6
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;

    const-string v23, "POST"

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->UserBillSwitchUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 415
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;-><init>(Lcom/gamedo/v360/SmsSdk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 415
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 417
    return-void

    .line 253
    .end local v10    # "format2":Ljava/text/SimpleDateFormat;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    :cond_4
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    const-string v22, "46000"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    const-string v22, "46002"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 257
    :cond_5
    const-string v21, "2"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->netMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :cond_6
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    const-string v22, "46001"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 259
    const-string v21, "3"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->netMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    :cond_7
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    const-string v22, "46003"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 261
    const-string v21, "4"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->netMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_8
    const-string v21, "101"

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->netMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 290
    .restart local v10    # "format2":Ljava/text/SimpleDateFormat;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 318
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v14    # "jsonObject1":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 320
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 330
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "tempkind":I
    :catch_2
    move-exception v8

    .line 331
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "fuck2"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 352
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v14    # "jsonObject1":Lorg/json/JSONObject;
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "tempkind":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 355
    new-instance v11, Lcom/gamedo/v360/IAPHandler;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/gamedo/v360/IAPHandler;-><init>(Landroid/app/Activity;)V

    .line 363
    .local v11, "iapHandler":Lcom/gamedo/v360/IAPHandler;
    new-instance v21, Lcom/gamedo/v360/IAPListener;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/gamedo/v360/IAPListener;-><init>(Landroid/content/Context;Lcom/gamedo/v360/IAPHandler;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gamedo/v360/SmsSdk;->mListener:Lcom/gamedo/v360/IAPListener;

    .line 368
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v21

    sput-object v21, Lcom/gamedo/v360/SmsSdk;->purchase:Lmm/purchasesdk/Purchase;

    .line 375
    :try_start_4
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->purchase:Lmm/purchasesdk/Purchase;

    const-string v22, "300002909472"

    const-string v23, "15B1CA56A815FB29"

    invoke-virtual/range {v21 .. v23}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 385
    :goto_7
    :try_start_5
    sget-object v21, Lcom/gamedo/v360/SmsSdk;->purchase:Lmm/purchasesdk/Purchase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamedo/v360/SmsSdk;->mListener:Lcom/gamedo/v360/IAPListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 386
    :catch_3
    move-exception v8

    .line 387
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 376
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 377
    .local v9, "e1":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 409
    .end local v9    # "e1":Ljava/lang/Exception;
    .end local v11    # "iapHandler":Lcom/gamedo/v360/IAPHandler;
    :catch_5
    move-exception v8

    .line 411
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public myCallBackResult(II)V
    .locals 3
    .param p1, "_result"    # I
    .param p2, "_sendId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamedo/v360/SmsSdk;->_isSend:Z

    .line 584
    packed-switch p1, :pswitch_data_0

    .line 600
    :goto_0
    :pswitch_0
    return-void

    .line 586
    :pswitch_1
    invoke-static {v2}, Lcom/gamedo/v360/sanguoAndroid360;->nativePayResult(I)V

    .line 587
    iget v0, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {p0, v0, v2}, Lcom/gamedo/v360/SmsSdk;->postDoneBillData(II)V

    goto :goto_0

    .line 590
    :pswitch_2
    invoke-static {v1}, Lcom/gamedo/v360/sanguoAndroid360;->nativePayResult(I)V

    .line 591
    iget v0, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {p0, v0, v1}, Lcom/gamedo/v360/SmsSdk;->postDoneBillData(II)V

    goto :goto_0

    .line 594
    :pswitch_3
    invoke-static {v1}, Lcom/gamedo/v360/sanguoAndroid360;->nativePayResult(I)V

    .line 595
    iget v0, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {p0, v0, v1}, Lcom/gamedo/v360/SmsSdk;->postDoneBillData(II)V

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public postDoneBillData(II)V
    .locals 8
    .param p1, "jifeiId"    # I
    .param p2, "billStatus"    # I

    .prologue
    .line 603
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 605
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "command"

    const-string v7, "postbill/billInfo"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v6, "protocolType"

    const-string v7, "request"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v6, "protocol"

    const-string v7, "1.0.2"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 610
    .local v0, "clientInfo":Lorg/json/JSONObject;
    const-string v6, "productId"

    iget-object v7, p0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    const-string v6, "channelId"

    iget-object v7, p0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string v6, "clientInfo"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 615
    .local v4, "mobileInfo":Lorg/json/JSONObject;
    const-string v6, "model"

    sget-object v7, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v6, "imei"

    sget-object v7, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v6, "smsCenter"

    sget-object v7, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string v6, "imsi"

    sget-object v7, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v6, "iccid"

    sget-object v7, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    const-string v6, "operatorId"

    iget v7, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    const-string v6, "mobileInfo"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v1, "doneBillBehavior":Lorg/json/JSONObject;
    const-string v6, "billId"

    invoke-virtual {v1, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    const-string v6, "billStatus"

    invoke-virtual {v1, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v6, "doneBillBehavior"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "clientInfo":Lorg/json/JSONObject;
    .end local v1    # "doneBillBehavior":Lorg/json/JSONObject;
    .end local v4    # "mobileInfo":Lorg/json/JSONObject;
    :goto_0
    iget-object v6, p0, Lcom/gamedo/v360/SmsSdk;->DonBillUrl:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "str":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 638
    return-void

    .line 629
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 631
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v5, ""

    .line 449
    .local v5, "str":Ljava/lang/String;
    move-object v6, p1

    .line 450
    .local v6, "uriAPI":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 453
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 455
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 456
    .local v4, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    :try_start_1
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 470
    :goto_0
    if-eqz v2, :cond_0

    .line 471
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 474
    :cond_0
    const-string v7, "retSrc"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 489
    .end local v4    # "se":Lorg/apache/http/entity/StringEntity;
    :goto_1
    return-object v5

    .line 461
    .restart local v4    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 482
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v4    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 477
    .local v0, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_1

    .line 478
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_4
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public sendSms(II)V
    .locals 6
    .param p1, "sendId"    # I
    .param p2, "yidongid"    # I

    .prologue
    const/16 v5, 0x2711

    const/4 v4, 0x1

    .line 640
    const-string v1, "sendSms"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<----------\u53d1\u9001\u77ed\u4fe1---------->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput p1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    .line 642
    iget-boolean v1, p0, Lcom/gamedo/v360/SmsSdk;->_isSend:Z

    if-eqz v1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 645
    :cond_0
    iput-boolean v4, p0, Lcom/gamedo/v360/SmsSdk;->_isSend:Z

    .line 647
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    packed-switch v1, :pswitch_data_0

    .line 675
    iput p2, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    .line 676
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 677
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 678
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 679
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 649
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_0
    iput p2, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    .line 650
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 651
    .restart local v0    # "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 652
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 653
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 656
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/multimode_billing_sms/ui/MultiModePay;->setEnableSend(Z)V

    .line 657
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 658
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x2712

    iput v1, v0, Landroid/os/Message;->what:I

    .line 659
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 660
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 663
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 664
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x2714

    iput v1, v0, Landroid/os/Message;->what:I

    .line 665
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 666
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 669
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 670
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x2719

    iput v1, v0, Landroid/os/Message;->what:I

    .line 671
    iget v1, p0, Lcom/gamedo/v360/SmsSdk;->PayId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 672
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendUserData(IIIII[IIIII)V
    .locals 13
    .param p1, "userCode"    # I
    .param p2, "guanka"    # I
    .param p3, "jinqian"    # I
    .param p4, "denglu"    # I
    .param p5, "twujiang"    # I
    .param p6, "kwujiang"    # [I
    .param p7, "dshijian"    # I
    .param p8, "zshijian"    # I
    .param p9, "jifei"    # I
    .param p10, "arpu"    # I

    .prologue
    .line 690
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 692
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v11, "command"

    const-string v12, "getbill/billcode"

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v11, "protocolType"

    const-string v12, "request"

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v11, "protocol"

    const-string v12, "1.0.0"

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 697
    .local v2, "clientInfo":Lorg/json/JSONObject;
    const-string v11, "productId"

    iget-object v12, p0, Lcom/gamedo/v360/SmsSdk;->productId:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v11, "channelId"

    iget-object v12, p0, Lcom/gamedo/v360/SmsSdk;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v11, "clientInfo"

    invoke-virtual {v6, v11, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 702
    .local v7, "mobileInfo":Lorg/json/JSONObject;
    const-string v11, "model"

    sget-object v12, Lcom/gamedo/v360/SmsSdk;->mobType:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string v11, "imei"

    sget-object v12, Lcom/gamedo/v360/SmsSdk;->imei:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string v11, "smsCenter"

    sget-object v12, Lcom/gamedo/v360/SmsSdk;->smscenter:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    const-string v11, "imsi"

    sget-object v12, Lcom/gamedo/v360/SmsSdk;->imsi:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    const-string v11, "iccid"

    sget-object v12, Lcom/gamedo/v360/SmsSdk;->ICCID:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    const-string v11, "mobileInfo"

    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 711
    .local v10, "userbehavior":Lorg/json/JSONObject;
    const/4 v9, -0x1

    .line 713
    .local v9, "userCodenum":I
    const/16 v11, 0x2710

    if-lt p1, v11, :cond_0

    .line 714
    const/16 v9, 0x1ae

    .line 718
    :goto_0
    const-string v11, "code"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 719
    const-string v11, "guanka"

    invoke-virtual {v10, v11, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 720
    const-string v11, "jinqian"

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 721
    const-string v11, "denglu"

    move/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 722
    const-string v11, "twujiang"

    move/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 724
    .local v1, "_array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p6

    array-length v11, v0

    if-lt v5, v11, :cond_1

    .line 727
    const-string v11, "kwujiang"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v11, "dshijian"

    move/from16 v0, p7

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 729
    const-string v11, "zshijian"

    move/from16 v0, p8

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 730
    const-string v11, "jifei"

    move/from16 v0, p9

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 731
    const-string v11, "arpu"

    move/from16 v0, p10

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    const/4 v3, -0x1

    .line 733
    .local v3, "codenum":I
    const/16 v11, 0x2710

    if-lt p1, v11, :cond_2

    const/16 v11, 0x4e1f

    if-ge p1, v11, :cond_2

    .line 734
    const/4 v3, 0x1

    .line 740
    :goto_2
    const-string v11, "zbyz"

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v11, "userbehavior"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v1    # "_array":Lorg/json/JSONArray;
    .end local v2    # "clientInfo":Lorg/json/JSONObject;
    .end local v3    # "codenum":I
    .end local v5    # "i":I
    .end local v7    # "mobileInfo":Lorg/json/JSONObject;
    .end local v9    # "userCodenum":I
    .end local v10    # "userbehavior":Lorg/json/JSONObject;
    :goto_3
    iget-object v11, p0, Lcom/gamedo/v360/SmsSdk;->userUrl:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, "str":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    return-void

    .line 716
    .end local v8    # "str":Ljava/lang/String;
    .restart local v2    # "clientInfo":Lorg/json/JSONObject;
    .restart local v7    # "mobileInfo":Lorg/json/JSONObject;
    .restart local v9    # "userCodenum":I
    .restart local v10    # "userbehavior":Lorg/json/JSONObject;
    :cond_0
    move v9, p1

    goto :goto_0

    .line 725
    .restart local v1    # "_array":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :cond_1
    :try_start_1
    aget v11, p6, v5

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 735
    .restart local v3    # "codenum":I
    :cond_2
    const/16 v11, 0x4e20

    if-lt p1, v11, :cond_3

    .line 736
    const/4 v3, 0x2

    goto :goto_2

    .line 738
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 744
    .end local v1    # "_array":Lorg/json/JSONArray;
    .end local v2    # "clientInfo":Lorg/json/JSONObject;
    .end local v3    # "codenum":I
    .end local v5    # "i":I
    .end local v7    # "mobileInfo":Lorg/json/JSONObject;
    .end local v9    # "userCodenum":I
    .end local v10    # "userbehavior":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 746
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public setDefultStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "defultStr"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk;->defultStr:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setOperatorId(I)V
    .locals 0
    .param p1, "operatorId"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/gamedo/v360/SmsSdk;->operatorId:I

    .line 125
    return-void
.end method

.method public setSmsStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsStr"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk;->smsStr:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public set_active(Landroid/app/Activity;)V
    .locals 0
    .param p1, "_active"    # Landroid/app/Activity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk;->_active:Landroid/app/Activity;

    .line 116
    return-void
.end method
