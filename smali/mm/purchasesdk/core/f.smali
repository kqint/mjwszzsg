.class public Lmm/purchasesdk/core/f;
.super Ljava/lang/Object;


# static fields
.field private static AuthForbidOrder:Ljava/lang/String;

.field private static AuthForzen:Ljava/lang/String;

.field private static AuthNotDownload:Ljava/lang/String;

.field private static AuthOverLimit:Ljava/lang/String;

.field private static CertCancleMsg:Ljava/lang/String;

.field private static ErrorMsg:Ljava/lang/String;

.field private static InitMsg:Ljava/lang/String;

.field private static NoNetworkMsg:Ljava/lang/String;

.field private static NoneGSMMsg:Ljava/lang/String;

.field private static NoneMccMsg:Ljava/lang/String;

.field private static OrderCheckCode:Ljava/lang/String;

.field private static OrderComsumtion:Ljava/lang/String;

.field private static OrderCount:Ljava/lang/String;

.field private static OrderFunds:Ljava/lang/String;

.field private static OrderLimit:Ljava/lang/String;

.field private static OrderMsg:Ljava/lang/String;

.field private static OrderPassword:Ljava/lang/String;

.field private static OrderSim:Ljava/lang/String;

.field private static OrderSms:Ljava/lang/String;

.field private static PayCodeMsg:Ljava/lang/String;

.field private static TimeoutMsg:Ljava/lang/String;

.field private static UnsubMsg:Ljava/lang/String;

.field private static UpdateMsg:Ljava/lang/String;

.field private static mCodeInfo:Ljava/util/HashMap;

.field private static mMessage:Ljava/lang/String;

.field private static statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8bbe\u5907\u7ed1\u5b9a\u53d6\u6d88\uff0c\u60a8\u5c06\u65e0\u6cd5\u8d2d\u4e70\u672c\u5e94\u7528\u5185\u5546\u54c1\u3002"

    sput-object v0, Lmm/purchasesdk/core/f;->CertCancleMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7cfb\u7edf\u521d\u59cb\u5316\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->NoNetworkMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u4e1a\u52a1\u4e0d\u652f\u6301\u975e\u4e2d\u56fd\u79fb\u52a8\u7528\u6237\uff0c\u8bf7\u66f4\u6362\u6210\u4e2d\u79fb\u52a8\u7684SIM\u5361\u6216\u5c06\u4e2d\u79fb\u52a8SIM\u5361\u8bbe\u4e3a\u4e3b\u5361\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->NoneMccMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u6240\u4f7f\u7528\u7684\u662f\u975eGSM\u624b\u673a\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->NoneGSMMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u8d2d\u4e70\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->TimeoutMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u4e1a\u52a1\u5df2\u6682\u505c\uff0c\u6682\u65f6\u65e0\u6cd5\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->AuthForzen:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u672c\u6708\u6d88\u8d39\u7684\u91d1\u989d\u5df2\u7d2f\u8ba1\u8d85\u8fc7\u6708\u9650\u989d\uff0c\u6682\u65f6\u65e0\u6cd5\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->AuthOverLimit:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u5173\u95ed\u4e86\u652f\u4ed8\u529f\u80fd\uff0c\u8bf7\u5230MM\u81ea\u670d\u52a1\u533a\u6253\u5f00\u652f\u4ed8\u529f\u80fd\u540e\u518d\u7ee7\u7eed\u8d2d\u4e70\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->AuthForbidOrder:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5e94\u7528\u4e0d\u662f\u6765\u81ea\u53ef\u4fe1\u7684\u4e0b\u8f7d\u6e90\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->AuthNotDownload:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7f51\u7edc\u73af\u5883\u5b89\u5168\uff0c\u8bf7\u652f\u4ed8\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u8ba2\u8d2d\u592a\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderLimit:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u6240\u8ba2\u8d2d\u5546\u54c1\u7684\u6570\u91cf\u8d85\u51fa\u9650\u5236\uff0c\u8bf7\u91cd\u65b0\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderCount:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u4eca\u5929\u6d88\u8d39\u7684\u91d1\u989d\u5df2\u7d2f\u8ba1\u8d85\u8fc7\u4eca\u65e5\u9650\u989d\uff0c\u6682\u65f6\u65e0\u6cd5\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderComsumtion:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u76ee\u524d\u8bdd\u8d39\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c\u540e\u5728\u7ee7\u7eed\u8d2d\u4e70\u672c\u5e94\u7528\u5185\u5546\u54c1\u3002\u8fd4\u56de\u7801"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderFunds:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderCheckCode:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u652f\u4ed8\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderPassword:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7531\u4e8e\u60a8\u624b\u673aSIM\u5361\u53d8\u66f4\uff0c\u8bf7\u4f60\u91cd\u65b0\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderSim:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef\uff0c\u652f\u4ed8\u5931\u8d25\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->OrderSms:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u5546\u54c1\u4e0d\u5b58\u5728\uff0c\u6682\u65f6\u65e0\u6cd5\u8ba2\u8d2d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->PayCodeMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u9000\u8ba2\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7cfb\u7edf\u9700\u8981\u5347\u7ea7\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    sput-object v1, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/core/f;->statusCode:I

    sput-object v1, Lmm/purchasesdk/core/f;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/f;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x68

    invoke-static {}, Lmm/purchasesdk/core/f;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fd4\u56de\u7801\uff1a"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eq p0, v2, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x66

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x67

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8fd4\u56de\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_3

    invoke-static {}, Lmm/purchasesdk/core/f;->init()V

    :cond_3
    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/a;

    iget-object v0, v0, Lmm/purchasesdk/core/a;->j:Ljava/lang/String;

    if-le p0, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u672a\u77e5\u9519\u8bef\u3002\u8fd4\u56de\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStatusCode()I
    .locals 1

    sget v0, Lmm/purchasesdk/core/f;->statusCode:I

    return v0
.end method

.method private static init()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    const-string v4, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u67e5\u8be2\u6210\u529f"

    const-string v4, "\u67e5\u8be2\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5546\u54c1\u8d2d\u4e70\u6210\u529f"

    const-string v4, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5546\u54c1\u8d2d\u4e70\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u9000\u8ba2\u6210\u529f"

    const-string v4, "\u9000\u8ba2\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u5546\u54c1\u5df2\u7ecf\u8d2d\u4e70\u3002"

    const-string v4, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u5546\u54c1\u5df2\u7ecf\u8d2d\u4e70\u3002"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xd9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->CertCancleMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->CertCancleMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->NoNetworkMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->NoNetworkMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->NoneMccMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->NoneMccMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->NoneGSMMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->NoneGSMMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->TimeoutMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->TimeoutMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthForzen:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthForzen:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->PayCodeMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->PayCodeMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xfc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xfd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderSim:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderSim:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderLimit:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderLimit:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderCount:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderCount:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthForbidOrder:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthForbidOrder:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderComsumtion:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderComsumtion:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x10f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderFunds:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderFunds:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthOverLimit:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthOverLimit:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    const-string v3, "\u652f\u4ed8\u7ed3\u679c\uff0c\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "\u652f\u4ed8\u7ed3\u679c\uff0c\u53d6\u6d88\u652f\u4ed8"

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderCheckCode:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderCheckCode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderPassword:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderPassword:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x19f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderCount:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderCount:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderSms:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderSms:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderComsumtion:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderComsumtion:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthOverLimit:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthOverLimit:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->OrderFunds:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->OrderFunds:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->AuthForbidOrder:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->AuthForbidOrder:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UnsubMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x1b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->UpdateMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/purchasesdk/core/f;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x2c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/purchasesdk/core/a;

    sget-object v3, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/purchasesdk/core/f;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setStatusCode(I)V
    .locals 0

    sput p0, Lmm/purchasesdk/core/f;->statusCode:I

    return-void
.end method
