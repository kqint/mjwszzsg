.class public Lsafiap/framework/sdk/task/ApkDownloadTask;
.super Landroid/os/AsyncTask;
.source "ApkDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PREFETCH_CACHE:I = 0x2000

.field private static final HEADER_ACTION:Ljava/lang/String; = "X-SAF-Action"

.field private static final HEADER_PHONE:Ljava/lang/String; = "X-SAF-Phone"

.field private static final HEADER_SYSTEM:Ljava/lang/String; = "X-SAF-System"

.field private static final HEADER_UID:Ljava/lang/String; = "X-SAF-UID"

.field private static final HEADER_VERSION:Ljava/lang/String; = "X-SAF-Version"

.field private static final MAX_PREFETCH_CACHE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ApkDownloadTask"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# instance fields
.field protected mActionName:Ljava/lang/String;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

.field private mDownloadToSdcard:Z

.field private mOffset:J

.field private mSaveToExternalStorage:Z

.field private mType:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "ApkDownloadTask"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "save2External"    # Z
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    .line 56
    iput-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mConnManager:Landroid/net/ConnectivityManager;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    .line 70
    iput-object p2, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    .line 71
    iput p3, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mVersion:I

    .line 72
    iput-boolean p4, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mSaveToExternalStorage:Z

    .line 73
    iput-object p5, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mType:Ljava/lang/String;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lsafiap/framework/sdk/util/DeviceInfo;

    iget-object v1, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsafiap/framework/sdk/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    .line 77
    iget-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mConnManager:Landroid/net/ConnectivityManager;

    .line 79
    :cond_0
    return-void
.end method

.method private checkConnectivity()Z
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 252
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCacheSizeByNetType()I
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "Context is null! Use default cache size."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 258
    const/16 v0, 0x2000

    .line 286
    :goto_0
    return v0

    .line 261
    :cond_0
    const/16 v0, 0x2000

    .line 286
    .local v0, "prefetchCacheSize":I
    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/task/ApkDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 84
    :cond_0
    const/16 v23, 0x0

    .line 237
    :goto_0
    return-object v23

    .line 86
    :cond_1
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "ApkDownloadTask.doInBackgroud().Task:"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ".url:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, p1, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mSaveToExternalStorage:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    invoke-static {}, Lsafiap/framework/sdk/util/SDCardUtility;->isSdcardReady()Z

    move-result v29

    if-eqz v29, :cond_2

    const/16 v29, 0x1

    :goto_1
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDownloadToSdcard:Z

    .line 91
    const-string v29, "patch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lsafiap/framework/sdk/util/PackageUtil;->getPatchFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 96
    .local v23, "targetFileName":Ljava/lang/String;
    :goto_2
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "target file: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 97
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 98
    const/16 v23, 0x0

    goto :goto_0

    .line 87
    .end local v23    # "targetFileName":Ljava/lang/String;
    :cond_2
    const/16 v29, 0x0

    goto :goto_1

    .line 94
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lsafiap/framework/sdk/util/PackageUtil;->getApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "targetFileName":Ljava/lang/String;
    goto :goto_2

    .line 101
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mSaveToExternalStorage:Z

    move/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v22

    .line 102
    .local v22, "targetFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 103
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 106
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lsafiap/framework/sdk/util/PackageUtil;->getTempFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 107
    .local v26, "tempFileName":Ljava/lang/String;
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "temp file: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mSaveToExternalStorage:Z

    move/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v25

    .line 109
    .local v25, "tempFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 110
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    .line 112
    const-wide/16 v29, 0x0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    .line 113
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_6

    .line 114
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 118
    :cond_6
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "offset: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 125
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 126
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v29

    const/16 v30, 0x4e20

    invoke-static/range {v29 .. v30}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v29

    const/16 v30, 0x4e20

    invoke-static/range {v29 .. v30}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    new-instance v10, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v10}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 132
    .local v10, "httpContext":Lorg/apache/http/protocol/HttpContext;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 133
    .local v9, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v29, "X-SAF-UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lsafiap/framework/sdk/util/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v29, "X-SAF-Action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v29, "X-SAF-Version"

    move-object/from16 v0, p0

    iget v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mVersion:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v29, "X-SAF-Phone"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v29, "X-SAF-System"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Android "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsafiap/framework/sdk/util/DeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "uid: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDeviceInfo:Lsafiap/framework/sdk/util/DeviceInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lsafiap/framework/sdk/util/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", package: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " version: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mVersion:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_7

    .line 140
    const-string v29, "Range"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "bytes="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_7
    :try_start_0
    invoke-interface {v5, v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 146
    .local v17, "response":Lorg/apache/http/HttpResponse;
    const-string v29, "http.target_host"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/http/HttpHost;

    .line 147
    .local v24, "targetHost":Lorg/apache/http/HttpHost;
    const-string v29, "http.request"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 148
    .local v15, "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Catch targetHost: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 149
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Catch realRequest: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 151
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 152
    .local v20, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 153
    .local v19, "rspCode":I
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "reason":Ljava/lang/String;
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Catch Task: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " get respond code: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " get reason: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 155
    const/16 v29, 0xc8

    move/from16 v0, v19

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    const/16 v29, 0xce

    move/from16 v0, v19

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 156
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Download failed, response code: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 157
    const/16 v29, 0x1a0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 158
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :cond_8
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 160
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 163
    :cond_9
    :try_start_1
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 164
    .local v18, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v18, :cond_17

    .line 165
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v30, "entity is not null"

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    const/4 v12, 0x0

    .line 167
    .local v12, "ins":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 168
    .local v27, "tempFileStream":Ljava/io/OutputStream;
    const-wide/16 v7, -0x1

    .line 171
    .local v7, "filelength":J
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 172
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    move-wide/from16 v31, v0

    add-long v7, v29, v31

    .line 173
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "filename="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " filelength="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-wide v13, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mOffset:J

    .line 176
    .local v13, "readnum":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDownloadToSdcard:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 177
    new-instance v28, Ljava/io/BufferedOutputStream;

    new-instance v29, Ljava/io/FileOutputStream;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v28 .. v29}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v27    # "tempFileStream":Ljava/io/OutputStream;
    .local v28, "tempFileStream":Ljava/io/OutputStream;
    move-object/from16 v27, v28

    .line 181
    .end local v28    # "tempFileStream":Ljava/io/OutputStream;
    .restart local v27    # "tempFileStream":Ljava/io/OutputStream;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lsafiap/framework/sdk/task/ApkDownloadTask;->getCacheSizeByNetType()I

    move-result v4

    .line 182
    .local v4, "cacheSize":I
    new-array v3, v4, [B

    .line 183
    .local v3, "buf":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/sdk/task/ApkDownloadTask;->isCancelled()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 188
    :cond_a
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v27, :cond_b

    .line 195
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_b
    if-eqz v12, :cond_c

    .line 198
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 202
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/sdk/task/ApkDownloadTask;->isCancelled()Z

    move-result v29

    if-nez v29, :cond_13

    .line 203
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    long-to-int v0, v7

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    long-to-int v0, v7

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/task/ApkDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 208
    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v29

    cmp-long v29, v29, v7

    if-nez v29, :cond_16

    .line 210
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v21

    .line 211
    .local v21, "success":Z
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    if-eqz v21, :cond_15

    .line 234
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 179
    .end local v3    # "buf":[B
    .end local v4    # "cacheSize":I
    .end local v11    # "i":I
    .end local v21    # "success":Z
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x8001

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v27

    goto :goto_3

    .line 184
    .restart local v3    # "buf":[B
    .restart local v4    # "cacheSize":I
    .restart local v11    # "i":I
    :cond_e
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    int-to-long v0, v11

    move-wide/from16 v29, v0

    add-long v13, v13, v29

    .line 186
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    long-to-int v0, v13

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    long-to-int v0, v7

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/task/ApkDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    goto/16 :goto_4

    .line 189
    .end local v3    # "buf":[B
    .end local v4    # "cacheSize":I
    .end local v11    # "i":I
    .end local v13    # "readnum":J
    :catch_0
    move-exception v6

    .line 190
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    const-string v29, "ApkDownloadTask"

    const-string v30, "SAF-A Exception:500001"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    if-eqz v27, :cond_f

    .line 195
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_f
    if-eqz v12, :cond_10

    .line 198
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 234
    :cond_10
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 192
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 193
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    .line 194
    if-eqz v27, :cond_11

    .line 195
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_11
    if-eqz v12, :cond_12

    .line 198
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 200
    :cond_12
    throw v29
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 222
    .end local v7    # "filelength":J
    .end local v12    # "ins":Ljava/io/InputStream;
    .end local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "rspCode":I
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v24    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v27    # "tempFileStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    .line 223
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_8
    const-string v29, "ApkDownloadTask"

    const-string v30, "SAF-A Exception:500002"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 234
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 237
    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_6
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 205
    .restart local v3    # "buf":[B
    .restart local v4    # "cacheSize":I
    .restart local v7    # "filelength":J
    .restart local v11    # "i":I
    .restart local v12    # "ins":Ljava/io/InputStream;
    .restart local v13    # "readnum":J
    .restart local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v16    # "reason":Ljava/lang/String;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "rspCode":I
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v24    # "targetHost":Lorg/apache/http/HttpHost;
    .restart local v27    # "tempFileStream":Ljava/io/OutputStream;
    :cond_13
    const/16 v29, 0x2

    :try_start_9
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    long-to-int v0, v7

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lsafiap/framework/sdk/task/ApkDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    .line 225
    .end local v3    # "buf":[B
    .end local v4    # "cacheSize":I
    .end local v7    # "filelength":J
    .end local v11    # "i":I
    .end local v12    # "ins":Ljava/io/InputStream;
    .end local v13    # "readnum":J
    .end local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "rspCode":I
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v24    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v27    # "tempFileStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    .line 226
    .local v6, "e":Ljava/io/IOException;
    :try_start_a
    const-string v29, "ApkDownloadTask"

    const-string v30, "SAF-A Exception:500003"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    instance-of v0, v6, Ljava/net/SocketTimeoutException;

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 230
    instance-of v0, v6, Lorg/apache/http/conn/ConnectTimeoutException;

    move/from16 v29, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 234
    :cond_14
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_6

    .line 215
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":[B
    .restart local v4    # "cacheSize":I
    .restart local v7    # "filelength":J
    .restart local v11    # "i":I
    .restart local v12    # "ins":Ljava/io/InputStream;
    .restart local v13    # "readnum":J
    .restart local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v16    # "reason":Ljava/lang/String;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "rspCode":I
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v21    # "success":Z
    .restart local v24    # "targetHost":Lorg/apache/http/HttpHost;
    .restart local v27    # "tempFileStream":Ljava/io/OutputStream;
    :cond_15
    :try_start_b
    sget-object v29, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v30, "Apk cannot be saved! Check for permission."

    invoke-virtual/range {v29 .. v30}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 234
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 216
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 234
    .end local v21    # "success":Z
    :cond_16
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object/from16 v23, v26

    .line 220
    goto/16 :goto_0

    .line 233
    .end local v3    # "buf":[B
    .end local v4    # "cacheSize":I
    .end local v7    # "filelength":J
    .end local v11    # "i":I
    .end local v12    # "ins":Ljava/io/InputStream;
    .end local v13    # "readnum":J
    .end local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "rspCode":I
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v24    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v27    # "tempFileStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v29

    .line 234
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 235
    throw v29

    .line 234
    .restart local v15    # "realRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v16    # "reason":Ljava/lang/String;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "rspCode":I
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v24    # "targetHost":Lorg/apache/http/HttpHost;
    :cond_17
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_6
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lsafiap/framework/sdk/task/ApkDownloadTask;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mContext:Landroid/content/Context;

    .line 245
    iget-object v1, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mActionName:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/util/PackageUtil;->getTempFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/sdk/task/ApkDownloadTask;->mDownloadToSdcard:Z

    .line 244
    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->deleteDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 248
    return-void
.end method
