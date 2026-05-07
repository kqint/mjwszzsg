.class public Lmm/purchasesdk/core/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lmm/purchasesdk/core/g/c;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v0, 0x6e

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0

    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_6

    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "399900002300"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SIDSign(Ljava/lang/String;Lorg/apache/http/HttpHost;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile failed to make sidSignature.code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x76

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/f;->a(Lcom/ccit/mmwlan/vo/SignView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :try_start_1
    invoke-virtual {p1, p0, p4}, Lmm/purchasesdk/core/h/f;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v1, "failed to make query request.code="

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v1, "mobile failed to make sidSignature.code=118"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x76

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_2
    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request : code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    sget-object v5, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request : code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget-object v6, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Req/Resp Time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p4}, Lmm/purchasesdk/core/h/g;->a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v0, 0x77

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v2, "failed to make query request.exception.code="

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v5, "network failed"

    invoke-static {v4, v5, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v1, "http response network timeout"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v0, 0x73

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0

    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    sget-object v7, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Req/Resp Time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v4, v9, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p4}, Lmm/purchasesdk/core/h/g;->a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lmm/purchasesdk/core/f;->setStatusCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/16 v1, 0x12c

    invoke-static {v1}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0

    :cond_1
    const/16 v0, 0xe8

    :try_start_2
    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0xe8

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const/16 v0, 0x73

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, ""

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->aa(Ljava/lang/String;)V

    const/16 v0, 0x73

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v1, "http response network timeout"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)I
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x2c5

    iget-object v3, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmm/purchasesdk/core/l/d;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p2, p3}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/g;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0x69

    :goto_0
    return v0

    :cond_0
    if-ne v3, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v3, v1, :cond_4

    const/16 v0, 0x2bd

    :cond_3
    :goto_1
    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xb

    if-ne v3, v1, :cond_5

    const/16 v0, 0x2be

    goto :goto_1

    :cond_5
    const/16 v1, 0xc

    if-ne v3, v1, :cond_6

    const/16 v0, 0x2bf

    goto :goto_1

    :cond_6
    const/16 v1, 0xd

    if-ne v3, v1, :cond_7

    const/16 v0, 0x2c0

    goto :goto_1

    :cond_7
    const/16 v1, 0x11

    if-ne v3, v1, :cond_8

    const/16 v0, 0x2c1

    goto :goto_1

    :cond_8
    const/16 v1, 0x12

    if-ne v3, v1, :cond_9

    const/16 v0, 0x2c2

    goto :goto_1

    :cond_9
    const/16 v1, 0x13

    if-ne v3, v1, :cond_a

    const/16 v0, 0x2c3

    goto :goto_1

    :cond_a
    const/16 v1, 0x233b

    if-ne v3, v1, :cond_3

    const/16 v0, 0x2c4

    goto :goto_1

    :cond_b
    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 15

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lmm/purchasesdk/core/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static/range {p1 .. p1}, Lmm/purchasesdk/core/l/d;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    check-cast p2, Lmm/purchasesdk/core/j/c;

    invoke-virtual/range {p2 .. p2}, Lmm/purchasesdk/core/j/c;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query request : code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    sget-object v7, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    invoke-static {v4, v7, v1}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v2

    :goto_1
    const/4 v2, 0x3

    if-ge v4, v2, :cond_4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    const/4 v9, 0x0

    sget-object v10, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMSRequest Req/Resp Time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v7, v12, v7

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v7, "utf-8"

    invoke-static {v2, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    const/4 v1, 0x0

    :try_start_3
    sget-object v7, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x1

    move v14, v1

    move-object v1, v2

    move v2, v14

    :goto_2
    if-nez v2, :cond_3

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v1, 0x1

    sget-object v2, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS http response status code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lmm/purchasesdk/core/h/g;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    sget-object v3, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v4, "failed to make query request"

    invoke-static {v2, v3, v4, v1}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u77ed\u4fe1\u8bf7\u6c42\u9519\u8bef"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u7cfb\u7edf\u51fa\u73b0\u9519\u8bef"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v14

    :goto_3
    const-string v7, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v7, 0x2

    sget-object v8, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms network failed.code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lmm/purchasesdk/core/h/g;->J()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v2}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_3
    if-nez v1, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v3, "cannot read authorization response"

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_3

    :cond_4
    move v2, v3

    goto/16 :goto_2
.end method

.method public a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmm/purchasesdk/core/l/d;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x65

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    new-instance v1, Lmm/purchasesdk/core/i/b;

    invoke-direct {v1}, Lmm/purchasesdk/core/i/b;-><init>()V

    check-cast p1, Lmm/purchasesdk/core/i/c;

    iget-object v3, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmm/purchasesdk/core/l/d;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4, p1, p2}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryOrderId retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v4, 0x64

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/core/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v0, 0x79

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    sparse-switch v1, :sswitch_data_0

    :sswitch_0
    move v0, v1

    :cond_2
    :goto_1
    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->P(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {v3}, Lmm/purchasesdk/core/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/16 v0, 0xf1

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth file is null,code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lmm/purchasesdk/core/l/d;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4, p2}, Lmm/purchasesdk/core/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)I

    move-result v1

    invoke-static {v1}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x1f4

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x1f5

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x1f6

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x1f7

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x1f8

    goto :goto_1

    :sswitch_7
    const/16 v0, 0x1f9

    goto :goto_1

    :sswitch_8
    :try_start_0
    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0x1fa

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :sswitch_9
    const/16 v0, 0x1fb

    goto/16 :goto_1

    :sswitch_a
    const/16 v0, 0x1fc

    goto/16 :goto_1

    :sswitch_b
    const/16 v0, 0x1fd

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x1ff

    goto/16 :goto_1

    :sswitch_d
    const/16 v0, 0x200

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get getOrderId failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmm/purchasesdk/core/i/c;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_a
        0x11 -> :sswitch_b
        0x12 -> :sswitch_c
        0x13 -> :sswitch_d
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmm/purchasesdk/core/l/d;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3, p2, p3}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/g;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    const/16 v4, 0x64

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/core/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v0, 0x79

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAuth return code ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5

    invoke-static {v3}, Lmm/purchasesdk/core/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/16 v0, 0xf1

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    sget-object v2, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth file is null,code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/g;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v4, v5, p3}, Lmm/purchasesdk/core/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const/16 v3, 0x68

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-ne v0, v7, :cond_6

    const/16 v0, 0xf4

    :goto_1
    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    if-ne v0, v2, :cond_7

    const/16 v0, 0xf6

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    const/16 v0, 0x10d

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    const/16 v0, 0xf5

    goto :goto_1

    :cond_9
    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    const/16 v0, 0xf7

    goto :goto_1

    :cond_a
    if-ne v0, v8, :cond_b

    const/16 v0, 0x109

    goto :goto_1

    :cond_b
    const/16 v2, 0x25

    if-ne v0, v2, :cond_c

    const/16 v0, 0x10a

    goto :goto_1

    :cond_c
    const/16 v2, 0xb

    if-ne v0, v2, :cond_d

    const/16 v0, 0xf8

    goto :goto_1

    :cond_d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_e

    const/16 v0, 0xf9

    goto :goto_1

    :cond_e
    const/16 v2, 0xd

    if-ne v0, v2, :cond_f

    const/16 v0, 0xfa

    goto :goto_1

    :cond_f
    const/16 v2, 0xe

    if-ne v0, v2, :cond_11

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0xfe

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_11
    const/16 v2, 0xf

    if-ne v0, v2, :cond_12

    const/16 v0, 0xff

    goto :goto_1

    :cond_12
    const/16 v2, 0x10

    if-ne v0, v2, :cond_13

    const/16 v0, 0x100

    goto :goto_1

    :cond_13
    const/16 v2, 0x11

    if-ne v0, v2, :cond_14

    const/16 v0, 0x101

    goto :goto_1

    :cond_14
    const/16 v2, 0x12

    if-ne v0, v2, :cond_15

    const/16 v0, 0x103

    goto :goto_1

    :cond_15
    const/16 v2, 0x13

    if-ne v0, v2, :cond_16

    const/16 v0, 0x104

    goto :goto_1

    :cond_16
    const/16 v2, 0x64

    if-ne v0, v2, :cond_17

    const/16 v0, 0x105

    goto/16 :goto_1

    :cond_17
    const/16 v2, 0x65

    if-ne v0, v2, :cond_18

    const/16 v0, 0x108

    goto/16 :goto_1

    :cond_18
    const/16 v2, 0x63

    if-ne v0, v2, :cond_19

    const/16 v0, 0x10c

    goto/16 :goto_1

    :cond_19
    const/16 v2, 0x27

    if-ne v0, v2, :cond_1a

    const/16 v0, 0xfb

    goto/16 :goto_1

    :cond_1a
    const/16 v2, 0x28

    if-ne v0, v2, :cond_1b

    const/16 v0, 0xfc

    goto/16 :goto_1

    :cond_1b
    const/16 v2, 0x29

    if-ne v0, v2, :cond_1c

    const/16 v0, 0xfd

    goto/16 :goto_1

    :cond_1c
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1d

    const/16 v0, 0x119

    goto/16 :goto_1

    :cond_1d
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1e

    const/16 v0, 0x11a

    goto/16 :goto_1

    :cond_1e
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1f

    const/16 v0, 0x11b

    goto/16 :goto_1

    :cond_1f
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_20

    const/16 v0, 0x10e

    goto/16 :goto_1

    :cond_20
    const/16 v2, 0xca

    if-ne v0, v2, :cond_21

    const/16 v0, 0x112

    goto/16 :goto_1

    :cond_21
    const/16 v2, 0xcc

    if-ne v0, v2, :cond_22

    const/16 v0, 0x11c

    goto/16 :goto_1

    :cond_22
    const/16 v2, 0xcd

    if-ne v0, v2, :cond_23

    const/16 v0, 0x11d

    goto/16 :goto_1

    :cond_23
    const/16 v2, 0x191

    if-ne v0, v2, :cond_24

    const/16 v0, 0x110

    goto/16 :goto_1

    :cond_24
    const/16 v2, 0x233b

    if-ne v0, v2, :cond_25

    const/16 v0, 0x114

    goto/16 :goto_1

    :cond_25
    const/16 v2, 0xb6

    if-ne v0, v2, :cond_26

    const/16 v0, 0x113

    goto/16 :goto_1

    :cond_26
    const/16 v2, 0x7d8

    if-ne v0, v2, :cond_27

    const/16 v0, 0x10f

    goto/16 :goto_1

    :cond_27
    const/16 v2, 0x7d9

    if-ne v0, v2, :cond_28

    const/16 v0, 0x115

    goto/16 :goto_1

    :cond_28
    const/16 v2, 0x14

    if-ne v0, v2, :cond_29

    const/16 v0, 0x116

    goto/16 :goto_1

    :cond_29
    const/16 v2, 0x16

    if-ne v0, v2, :cond_2a

    const/16 v0, 0x117

    goto/16 :goto_1

    :cond_2a
    const/16 v2, 0x19

    if-ne v0, v2, :cond_2b

    const/16 v0, 0x118

    goto/16 :goto_1

    :cond_2b
    sget-object v2, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown error.code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    move v0, v1

    goto/16 :goto_0
.end method

.method public b(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmm/purchasesdk/core/l/d;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    new-instance v1, Lmm/purchasesdk/core/h/b;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/b;-><init>()V

    new-instance v2, Lmm/purchasesdk/core/h/c;

    invoke-direct {v2}, Lmm/purchasesdk/core/h/c;-><init>()V

    invoke-virtual {v1, p1, p2}, Lmm/purchasesdk/core/h/b;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/core/l/d;->U()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2, p2}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lmm/purchasesdk/core/h/c;->as:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v0, v2, Lmm/purchasesdk/core/h/c;->au:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get copyright failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lmm/purchasesdk/core/h/c;->at:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/core/g/e;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p3}, Lmm/purchasesdk/core/g/e;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lmm/purchasesdk/core/j/d;

    move-object v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v1, v4, v5, p3}, Lmm/purchasesdk/core/j/d;->a([BLjava/lang/String;Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/j/d;

    move-result-object p2

    const/4 v1, 0x0

    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS response: code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/g;->J()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    sget-object v4, Lmm/purchasesdk/core/g/e;->TAG:Ljava/lang/String;

    const-string v5, "parse failed"

    invoke-static {v3, v4, v5, v1}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u54cd\u5e94\u89e3\u6790\u9519\u8bef"

    invoke-virtual {p2, v1}, Lmm/purchasesdk/core/h/g;->W(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method
