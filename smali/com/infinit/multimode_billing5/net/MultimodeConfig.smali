.class public Lcom/infinit/multimode_billing5/net/MultimodeConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CHECK_RESULT:I = 0x192

.field public static final ERROR_CONNECT_CANCEL:I = 0x1f5

.field public static final ERROR_NET_COPYRIGHT_DENIED:I = 0x12e

.field public static final ERROR_NET_TIMEOUT:I = 0x12d

.field public static final ERROR_RESULT_FAILD:I = 0x191

.field public static final ERROR_SMS_TOO_LONG:I = 0x1f6

.field public static final ERROR_SOFT_APPIDMISS:I = 0xc9

.field public static final ERROR_SOFT_PERMISSION_INTENT:I = 0xcb

.field public static final ERROR_SOFT_PERMISSION_NETWORK_STATE:I = 0xcc

.field public static final ERROR_SOFT_PERMISSION_PHONESTATE:I = 0xca

.field public static final FAIL:I = 0x3e7

.field public static final INTERNET_FAIL:I = 0x12f

.field public static final NO_APPID:I = 0x66

.field public static final NO_CONSUMECODE:I = 0x68

.field public static final NO_CPID:I = 0x65

.field public static final NO_DATA:I = 0x6a

.field public static final NO_FID:I = 0x67

.field public static final NO_IMSI:I = 0x69

.field public static final NULLPOINT_FAIL:I = 0x130

.field public static final SOCKET_TIME_OUT:I = 0x131

.field public static final SUCCESS:I = 0x0

.field public static URL:Ljava/lang/String; = null

.field private static _$1:Ljava/lang/String; = null

.field private static _$10:Ljava/lang/String; = null

.field private static _$11:Ljava/lang/String; = null

.field private static _$2:Ljava/lang/String; = null

.field private static _$3:Ljava/lang/String; = null

.field private static _$4:Ljava/lang/String; = null

.field private static _$5:Ljava/lang/String; = null

.field private static _$6:Z = false

.field private static _$7:Ljava/lang/String; = null

.field private static _$8:Ljava/lang/String; = null

.field private static _$9:Ljava/lang/String; = null

.field public static final authKeyStr:Ljava/lang/String; = "Subs123"

.field public static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://58.246.196.82:9008/servicedata.do?"

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->URL:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$11:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$10:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$9:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$8:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$7:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$6:Z

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$5:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$4:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$3:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$2:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$10:Ljava/lang/String;

    return-object v0
.end method

.method public static getAuthKeyStr()Ljava/lang/String;
    .locals 1

    const-string v0, "Subs123"

    return-object v0
.end method

.method public static getAuthentime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method public static getConsumeCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$9:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$11:Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorMsgByCode(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0
.end method

.method public static getFid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$8:Ljava/lang/String;

    return-object v0
.end method

.method public static getFidsms()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method public static getHmac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method public static getImsi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$7:Ljava/lang/String;

    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public static getPasswd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method public static initMessage()V
    .locals 3

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u7248\u6743\u6821\u9a8c\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x65

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u8bf7\u914d\u7f6ecpId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x66

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u8bf7\u914d\u7f6eAppId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x67

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u8bf7\u914d\u7f6efid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x68

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u8ba1\u8d39\u70b9ID\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x69

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u672a\u83b7\u53d6\u5230IMSI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x6a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u53c2\u6570\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u9700\u8981\u914d\u7f6e\u5e94\u7528ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xca

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u9700\u8981\u914d\u7f6eandroid.permission.READ_PHONE_STATE\u6743\u9650"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xcb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u9700\u8981\u914d\u7f6eandroid.permission.INTERNET\u6743\u9650"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xcc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u9700\u8981\u914d\u7f6eandroid.permission.ACCESS_NETWORK_STATE\u6743\u9650"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u7f51\u7edc\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u8054\u7f51\u6210\u529f\uff0c\u4f46\u7248\u6743\u6821\u9a8c\u975e\u6cd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3e7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u670d\u52a1\u7aef\u6821\u9a8c\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x130

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u7a7a\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x131

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u6c83\u5e10\u53f7\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x192

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u652f\u4ed8\u5b9d\u9a8c\u7b7e\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "\u53d1\u9001\u6307\u4ee4\u8fc7\u957f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isNeedSave()Z
    .locals 1

    sget-boolean v0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$6:Z

    return v0
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$10:Ljava/lang/String;

    return-void
.end method

.method public static setAuthentime(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$3:Ljava/lang/String;

    return-void
.end method

.method public static setConsumeCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$9:Ljava/lang/String;

    return-void
.end method

.method public static setCpId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$11:Ljava/lang/String;

    return-void
.end method

.method public static setFid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$8:Ljava/lang/String;

    return-void
.end method

.method public static setFidsms(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$4:Ljava/lang/String;

    return-void
.end method

.method public static setHmac(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$2:Ljava/lang/String;

    return-void
.end method

.method public static setImsi(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$7:Ljava/lang/String;

    return-void
.end method

.method public static setKey(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$1:Ljava/lang/String;

    return-void
.end method

.method public static setNeedSave(Z)V
    .locals 0

    sput-boolean p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$6:Z

    return-void
.end method

.method public static setPasswd(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->_$5:Ljava/lang/String;

    return-void
.end method
