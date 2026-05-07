.class public Lsafiap/framework/logreport/monitor/handler/LogreportHandler;
.super Landroid/app/Service;
.source "LogreportHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;
    }
.end annotation


# instance fields
.field private CrashLog:Ljava/lang/String;

.field private Parameter_Error:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private connMgr:Landroid/net/ConnectivityManager;

.field private errorPostEnd:Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;

.field private handler:Landroid/os/Handler;

.field private index:I

.field m_Receiver:Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;

.field m_SendFlag:Z

.field private maxIndex:I

.field protected mei:Ljava/lang/Object;

.field private merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

.field private result:Ljava/lang/String;

.field private updateErrorIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    const-string v0, "LogreportHandler"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "ERROR"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->Parameter_Error:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->handler:Landroid/os/Handler;

    .line 39
    iput v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->updateErrorIdList:Ljava/util/List;

    .line 47
    iput-boolean v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    .line 220
    new-instance v0, Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;

    invoke-direct {v0}, Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;-><init>()V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_Receiver:Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    return v0
.end method

.method static synthetic access$1(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->errorPostEnd:Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;

    return-void
.end method

.method static synthetic access$10(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->post(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    return-void
.end method

.method static synthetic access$3(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    return-void
.end method

.method static synthetic access$4(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->updateErrorIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->postData()V

    return-void
.end method

.method static synthetic access$6(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->postByIndex(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$7(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->onResponsePre()V

    return-void
.end method

.method static synthetic access$8(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    return v0
.end method

.method static synthetic access$9(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->notifyOnEnd()V

    return-void
.end method

.method private appendMonitorHeadValue(Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;Ljava/lang/String;)V
    .locals 2
    .param p1, "mh"    # Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
    .param p2, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 335
    if-nez p2, :cond_0

    const-string p2, "[]"

    .end local p2    # "phoneNo":Ljava/lang/String;
    :cond_0
    iput-object p2, p1, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->phoneNo:Ljava/lang/String;

    .line 336
    sget-object v1, Lsafiap/framework/logreport/monitor/MonitorUtils;->df:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lsafiap/framework/logreport/monitor/MonitorUtils;->getCurrentTime(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->sendtime:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->getImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->imei:Ljava/lang/String;

    .line 338
    invoke-static {}, Lsafiap/framework/logreport/monitor/MonitorUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "systemVersion":Ljava/lang/String;
    iput-object v0, p1, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->system:Ljava/lang/String;

    .line 340
    return-void
.end method

.method private buildMusicErrorBean(Landroid/content/Intent;)Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 464
    iget-object v3, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->Parameter_Error:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "ERROR":Ljava/lang/String;
    const-string v3, "LogreportHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intent extra info : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 469
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "els":[Ljava/lang/String;
    new-instance v2, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-direct {v2}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;-><init>()V

    .line 473
    .local v2, "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setErrorCode(Ljava/lang/String;)V

    .line 474
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setTimeStamp(Ljava/lang/String;)V

    .line 475
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 479
    .end local v1    # "els":[Ljava/lang/String;
    .end local v2    # "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isConnectedNetwork()Z
    .locals 3

    .prologue
    .line 536
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 537
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    .line 539
    :cond_0
    const/4 v1, 0x0

    .line 543
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyOnEnd()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->errorPostEnd:Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->errorPostEnd:Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;

    invoke-interface {v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;->onEnd()V

    .line 367
    :cond_0
    return-void
.end method

.method private onResponsePre()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->updateMeiById()V

    .line 372
    iget v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    if-lez v0, :cond_0

    iget v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    iget v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    if-gt v0, v1, :cond_0

    .line 373
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->notifyOnEnd()V

    .line 381
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0
.end method

.method private post(Ljava/lang/String;)V
    .locals 15
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    new-instance v4, Lsafiap/framework/logreport/monitor/collect/Json;

    invoke-direct {v4}, Lsafiap/framework/logreport/monitor/collect/Json;-><init>()V

    .line 245
    .local v4, "json":Lsafiap/framework/logreport/monitor/collect/Json;
    new-instance v5, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;

    invoke-direct {v5}, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;-><init>()V

    .line 246
    .local v5, "mh":Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
    const-string v6, "[]"

    .line 247
    .local v6, "phoneNo":Ljava/lang/String;
    const/4 v2, 0x1

    .line 249
    .local v2, "isErrorInfo":Z
    invoke-direct {p0, v5, v6}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->appendMonitorHeadValue(Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;Ljava/lang/String;)V

    .line 254
    new-instance v8, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;

    invoke-direct {v8}, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;-><init>()V

    .line 255
    .local v8, "t_Collect":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;
    const-string v12, "head"

    invoke-virtual {v4, v12, v5}, Lsafiap/framework/logreport/monitor/collect/Json;->append(Ljava/lang/String;Ljava/lang/Object;)Lsafiap/framework/logreport/monitor/collect/Json;

    move-result-object v12

    .line 256
    const-string v13, "log"

    invoke-virtual {v12, v13, v8}, Lsafiap/framework/logreport/monitor/collect/Json;->append(Ljava/lang/String;Ljava/lang/Object;)Lsafiap/framework/logreport/monitor/collect/Json;

    move-result-object v12

    .line 257
    invoke-virtual {v12}, Lsafiap/framework/logreport/monitor/collect/Json;->toJson()Ljava/lang/String;

    move-result-object v12

    .line 255
    iput-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    .line 260
    iget-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 261
    .local v7, "t_Byte":[B
    array-length v12, v7

    new-array v9, v12, [B

    .line 262
    .local v9, "t_NewByte":[B
    const/4 v3, 0x0

    .line 263
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v12, v7

    if-lt v1, v12, :cond_1

    .line 272
    new-array v10, v3, [B

    .line 273
    .local v10, "t_Result":[B
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    .line 276
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    .line 278
    new-instance v11, Ljava/lang/String;

    const-string v12, "DeviceLog="

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 279
    .local v11, "t_String":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    .line 280
    const-string v12, "LogreportHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "result--> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->fillCrashLogToResult2()V

    .line 291
    :cond_0
    iget-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    const-string v13, "result"

    invoke-static {v12, v13}, Lsafiap/framework/logreport/monitor/MonitorUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    invoke-direct {p0, v12}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->runHttpTask(Ljava/lang/String;)V

    .line 299
    .end local v1    # "i":I
    .end local v2    # "isErrorInfo":Z
    .end local v3    # "j":I
    .end local v4    # "json":Lsafiap/framework/logreport/monitor/collect/Json;
    .end local v5    # "mh":Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
    .end local v6    # "phoneNo":Ljava/lang/String;
    .end local v7    # "t_Byte":[B
    .end local v8    # "t_Collect":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;
    .end local v9    # "t_NewByte":[B
    .end local v10    # "t_Result":[B
    .end local v11    # "t_String":Ljava/lang/String;
    :goto_2
    return-void

    .line 265
    .restart local v1    # "i":I
    .restart local v2    # "isErrorInfo":Z
    .restart local v3    # "j":I
    .restart local v4    # "json":Lsafiap/framework/logreport/monitor/collect/Json;
    .restart local v5    # "mh":Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
    .restart local v6    # "phoneNo":Ljava/lang/String;
    .restart local v7    # "t_Byte":[B
    .restart local v8    # "t_Collect":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;
    .restart local v9    # "t_NewByte":[B
    :cond_1
    aget-byte v12, v7, v1

    const/16 v13, 0x22

    if-eq v12, v13, :cond_2

    .line 267
    aget-byte v12, v7, v1

    aput-byte v12, v9, v3

    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 263
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .restart local v10    # "t_Result":[B
    :cond_3
    aget-byte v12, v9, v1

    aput-byte v12, v10, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v1    # "i":I
    .end local v2    # "isErrorInfo":Z
    .end local v3    # "j":I
    .end local v4    # "json":Lsafiap/framework/logreport/monitor/collect/Json;
    .end local v5    # "mh":Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
    .end local v6    # "phoneNo":Ljava/lang/String;
    .end local v7    # "t_Byte":[B
    .end local v8    # "t_Collect":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;
    .end local v9    # "t_NewByte":[B
    .end local v10    # "t_Result":[B
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private postByIndex(Ljava/util/List;I)V
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;>;"
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    .line 502
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-virtual {v1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getCrashLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->CrashLog:Ljava/lang/String;

    .line 504
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setCrashLog(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$4;

    invoke-direct {v2, p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$4;-><init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private postData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-boolean v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "LogreportHandler"

    const-string v2, "postData busy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-boolean v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    if-nez v1, :cond_1

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    .line 67
    :cond_1
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->isConnectedNetwork()Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    iput-boolean v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->listUncommitted()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    .line 80
    const-string v1, "LogreportHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--> list size -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    if-nez v1, :cond_3

    .line 86
    iput-boolean v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0

    .line 92
    :cond_3
    iget v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    iget v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->maxIndex:I

    if-lt v1, v2, :cond_4

    .line 95
    iput-boolean v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0

    .line 102
    :cond_4
    iget v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    .line 103
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-virtual {v1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getCrashLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->CrashLog:Ljava/lang/String;

    .line 104
    iget v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->index:I

    .line 108
    new-instance v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;

    invoke-direct {v1, p0, v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;-><init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/util/List;)V

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->errorPostEnd:Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;

    .line 149
    const-string v1, "client"

    invoke-direct {p0, v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->post(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runHttpTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Lsafiap/framework/logreport/monitor/task/HttpTask;

    const-string v1, "http://saf.hotpotpro.com/SAFUpgradeServer/devlog"

    new-instance v2, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;

    invoke-direct {v2, p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;-><init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V

    invoke-direct {v0, v1, p1, v2}, Lsafiap/framework/logreport/monitor/task/HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;)V

    .line 458
    .local v0, "httpTask":Lsafiap/framework/logreport/monitor/task/HttpTask;
    invoke-virtual {v0}, Lsafiap/framework/logreport/monitor/task/HttpTask;->execute()V

    .line 459
    const-string v1, "LogreportHandler"

    const-string v2, "httpTask.execute --> "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method private updateMeiById()V
    .locals 6

    .prologue
    .line 518
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    if-nez v2, :cond_1

    .line 519
    const-string v2, "LogreportHandler"

    const-string v3, "updateMeiById return ;"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->merrorbean:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-virtual {v2}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "id":Ljava/lang/String;
    const-string v2, "LogreportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateMeiById -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 527
    .local v1, "idint":I
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->updateErrorIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-static {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->updateTocommitted([Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillCrashLogToResult2()V
    .locals 11

    .prologue
    .line 308
    const-string v0, "CrashLog:[]"

    .line 310
    .local v0, "emptyCrashLog":Ljava/lang/String;
    iget-object v9, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->CrashLog:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 311
    .local v3, "t_Byte":[B
    array-length v6, v3

    .line 313
    .local v6, "t_length":I
    rem-int/lit8 v9, v6, 0x3

    if-nez v9, :cond_0

    .line 314
    move v7, v6

    .line 318
    .local v7, "t_reallength":I
    :goto_0
    new-array v4, v7, [B

    .line 319
    .local v4, "t_NewByte":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 322
    move v2, v6

    :goto_2
    if-lt v2, v7, :cond_2

    .line 325
    invoke-static {v4}, Lsafiap/framework/sdk/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "t_String":Ljava/lang/String;
    const-string v9, "/"

    const-string v10, "*"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "test":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CrashLog:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "fillCrashLog":Ljava/lang/String;
    iget-object v9, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->result:Ljava/lang/String;

    .line 331
    return-void

    .line 316
    .end local v1    # "fillCrashLog":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "t_NewByte":[B
    .end local v5    # "t_String":Ljava/lang/String;
    .end local v7    # "t_reallength":I
    .end local v8    # "test":Ljava/lang/String;
    :cond_0
    div-int/lit8 v9, v6, 0x3

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v7, v9, 0x3

    .restart local v7    # "t_reallength":I
    goto :goto_0

    .line 320
    .restart local v2    # "i":I
    .restart local v4    # "t_NewByte":[B
    :cond_1
    aget-byte v9, v3, v2

    aput-byte v9, v4, v2

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_2
    const/16 v9, 0x20

    aput-byte v9, v4, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 346
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 225
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->connMgr:Landroid/net/ConnectivityManager;

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "commandFilter":Landroid/content/IntentFilter;
    const-string v1, "saf.framework.logreport.action.SERVICE_MONITOR_CRASH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "saf.framework.logreport.monitor.handler.ACTION_SENDREPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_Receiver:Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    const-string v1, "LogreportHandler"

    const-string v2, " music handler onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "LogreportHandler"

    const-string v1, "LogreportHandler onDestroy enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 556
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_Receiver:Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;

    invoke-virtual {p0, v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 559
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 560
    const-string v0, "LogreportHandler"

    const-string v1, "LogreportHandler onDestroy exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 159
    const-string v4, "LogreportHandler"

    const-string v5, "entering onStart"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez p1, :cond_1

    .line 162
    const-string v4, "LogreportHandler"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 169
    const-string v4, "LogreportHandler"

    const-string v5, "action is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    const-string v4, "LogreportHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "music handler receive action = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "saf.framework.logreport.action.SERVICE_MONITOR_CRASH_ERROR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    invoke-direct {p0, p1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->buildMusicErrorBean(Landroid/content/Intent;)Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    move-result-object v2

    .line 179
    .local v2, "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    invoke-static {v2}, Lsafiap/framework/logreport/monitor/MonitorUtils;->convertToMonitorErrorInfo(Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;)Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;

    move-result-object v3

    .line 181
    .local v3, "mei":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;
    const-string v4, "LogreportHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mei.TimeStamp-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;->TimeStamp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;

    iget-object v4, v3, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;->TimeStamp:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v2, v3}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;-><init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/lang/String;Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;)V

    .line 203
    .local v1, "collectCrashLog":Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;
    invoke-virtual {v1}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->execute()V

    goto :goto_0

    .line 205
    .end local v1    # "collectCrashLog":Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;
    .end local v2    # "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    .end local v3    # "mei":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;
    :cond_3
    const-string v4, "saf.framework.logreport.monitor.handler.ACTION_SENDREPORT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const-string v4, "LogreportHandler"

    const-string v5, "enter ACTION_SENDREPORT send"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->postData()V

    .line 211
    const-string v4, "LogreportHandler"

    const-string v5, "leave ACTION_SENDREPORT send"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
