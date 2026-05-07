.class public Lsafiap/framework/sdk/task/QueryTask;
.super Landroid/os/AsyncTask;
.source "QueryTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAM_DEVICE:Ljava/lang/String; = "phone"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "system"

.field private static final PARAM_UID:Ljava/lang/String; = "uid"

.field private static final RESPONSE_HEADER_PACKAGE_INFO:Ljava/lang/String; = "package-info"

.field private static final RESPONSE_HEADER_REASON:Ljava/lang/String; = "Reason"

.field private static final TAG:Ljava/lang/String; = "QueryTask"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

.field private mNameValueArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "QueryTask"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object v0, p0, Lsafiap/framework/sdk/task/QueryTask;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lsafiap/framework/sdk/task/QueryTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/sdk/task/QueryTask;->mNameValueArray:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lsafiap/framework/sdk/task/QueryTask;->mTaskName:Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iput-object p2, p0, Lsafiap/framework/sdk/task/QueryTask;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lsafiap/framework/sdk/util/DeviceInfo;

    iget-object v1, p0, Lsafiap/framework/sdk/task/QueryTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsafiap/framework/sdk/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/task/QueryTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method protected addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lsafiap/framework/sdk/task/QueryTask;->mNameValueArray:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/task/QueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 67
    sget-object v11, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "QueryTask.doInBackground() ------------url:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 69
    iget-object v11, p0, Lsafiap/framework/sdk/task/QueryTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    if-eqz v11, :cond_0

    .line 70
    const-string v11, "uid"

    iget-object v12, p0, Lsafiap/framework/sdk/task/QueryTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    invoke-virtual {v12}, Lsafiap/framework/sdk/util/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lsafiap/framework/sdk/task/QueryTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string v11, "system"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{Google Android:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lsafiap/framework/sdk/task/QueryTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "deviceModel":Ljava/lang/String;
    const-string v11, "phone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lsafiap/framework/sdk/task/QueryTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v11, p0, Lsafiap/framework/sdk/task/QueryTask;->mNameValueArray:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 83
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v11, p0, Lsafiap/framework/sdk/task/QueryTask;->mNameValueArray:Ljava/util/List;

    const-string v12, "GBK"

    invoke-direct {v3, v11, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 86
    .local v3, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 93
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const/16 v12, 0x4e20

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const/16 v12, 0x4e20

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 97
    :try_start_1
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 98
    .local v6, "response":Lorg/apache/http/HttpResponse;
    if-nez v6, :cond_2

    .line 99
    sget-object v11, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v12, "Get null response when connecting server!"

    invoke-virtual {v11, v12}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 100
    const/4 v9, 0x0

    .line 145
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v9

    .line 79
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/message/BasicNameValuePair;

    .line 80
    .local v4, "pair":Lorg/apache/http/message/BasicNameValuePair;
    sget-object v12, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v4    # "pair":Lorg/apache/http/message/BasicNameValuePair;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v11, "QueryTask"

    const-string v12, "SAF-A Exception:511001"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 104
    .local v10, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 105
    .local v7, "responseCode":I
    sget-object v11, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Task:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lsafiap/framework/sdk/task/QueryTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".responseCode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",reason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 106
    const/16 v11, 0xc8

    if-eq v7, v11, :cond_4

    .line 107
    const-string v11, "Reason"

    invoke-interface {v6, v11}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 108
    sget-object v11, Lsafiap/framework/sdk/task/QueryTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ResponseHeaderReason: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "Reason"

    invoke-interface {v6, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 110
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 113
    :cond_4
    const/4 v9, 0x0

    .line 114
    .local v9, "responseResult":Ljava/lang/String;
    :try_start_3
    const-string v11, "package-info"

    invoke-interface {v6, v11}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 115
    const-string v11, "package-info"

    invoke-interface {v6, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 143
    :cond_5
    :goto_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_2

    .line 117
    :cond_6
    :try_start_4
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 118
    .local v8, "responseEntiyt":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_5

    .line 120
    :try_start_5
    const-string v11, "ISO_8859_1"

    invoke-static {v8, v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/apache/http/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    goto :goto_3

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Lorg/apache/http/ParseException;
    :try_start_6
    const-string v11, "QueryTask"

    const-string v12, "SAF-A Exception:511002"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v2}, Lorg/apache/http/ParseException;->printStackTrace()V
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 131
    .end local v2    # "e":Lorg/apache/http/ParseException;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "responseCode":I
    .end local v8    # "responseEntiyt":Lorg/apache/http/HttpEntity;
    .end local v9    # "responseResult":Ljava/lang/String;
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_7
    const-string v11, "QueryTask"

    const-string v12, "SAF-A Exception:511004"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 145
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 124
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "responseCode":I
    .restart local v8    # "responseEntiyt":Lorg/apache/http/HttpEntity;
    .restart local v9    # "responseResult":Ljava/lang/String;
    .restart local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_3
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    const-string v11, "QueryTask"

    const-string v12, "SAF-A Exception:511003"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "responseCode":I
    .end local v8    # "responseEntiyt":Lorg/apache/http/HttpEntity;
    .end local v9    # "responseResult":Ljava/lang/String;
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_4
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v11, "QueryTask"

    const-string v12, "SAF-A Exception:511005"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    instance-of v11, v2, Ljava/net/SocketTimeoutException;

    if-nez v11, :cond_7

    .line 139
    instance-of v11, v2, Lorg/apache/http/conn/ConnectTimeoutException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 143
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 143
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 144
    throw v11
.end method
