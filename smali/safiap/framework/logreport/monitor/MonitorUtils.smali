.class public final Lsafiap/framework/logreport/monitor/MonitorUtils;
.super Ljava/lang/Object;
.source "MonitorUtils.java"


# static fields
.field public static MILLIS_SDF:Ljava/text/SimpleDateFormat; = null

.field public static final SDF_STRING:Ljava/lang/String; = "yy-MM HH:mm:ss.SSS"

.field public static SECOND_SDF:Ljava/text/SimpleDateFormat;

.field static TAG:Ljava/lang/String;

.field public static df:Ljava/text/SimpleDateFormat;

.field private static os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "MonitorUtils"

    sput-object v0, Lsafiap/framework/logreport/monitor/MonitorUtils;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsafiap/framework/logreport/monitor/MonitorUtils;->df:Ljava/text/SimpleDateFormat;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsafiap/framework/logreport/monitor/MonitorUtils;->MILLIS_SDF:Ljava/text/SimpleDateFormat;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsafiap/framework/logreport/monitor/MonitorUtils;->SECOND_SDF:Ljava/text/SimpleDateFormat;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMonitorErrorInfo(Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;)Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;
    .locals 1
    .param p0, "meb"    # Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    .prologue
    .line 90
    new-instance v0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;

    invoke-direct {v0}, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;-><init>()V

    .line 92
    .local v0, "mei":Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;
    invoke-static {p0, v0}, Lsafiap/framework/logreport/monitor/MonitorUtils;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lsafiap/framework/logreport/monitor/MonitorUtils;->df:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "df"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Lsafiap/framework/logreport/monitor/MonitorUtils;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static init(Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lsafiap/framework/logreport/monitor/MonitorUtils;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendMontitorErrorInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 34
    .local v3, "phonerNumber":Ljava/lang/String;
    new-instance v2, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;

    invoke-static {}, Lsafiap/framework/logreport/monitor/MonitorUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4, v3}, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v2, "mei":Lsafiap/framework/logreport/monitor/MonitorErrorInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "saf.framework.logreport.action.SERVICE_MONITOR_CRASH_ERROR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->buildToString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "errorStringInfo":Ljava/lang/String;
    const-string v4, "ERROR"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    sget-object v4, Lsafiap/framework/logreport/monitor/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v5, "sending broadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p0, "meb"    # Ljava/lang/Object;
    .param p1, "mui"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 99
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v2

    .line 101
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 117
    return-void

    .line 102
    :cond_0
    aget-object v0, v2, v3

    .line 103
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Lsafiap/framework/logreport/monitor/MonitorUtils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 110
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lsafiap/framework/logreport/monitor/MonitorUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "name-->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 112
    .local v1, "f1":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "f1":Ljava/lang/reflect/Field;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "ch":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0    # "value":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 75
    .restart local p0    # "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Lsafiap/framework/logreport/monitor/MonitorUtils;->init(Ljava/lang/String;)V

    .line 122
    :try_start_0
    sget-object v1, Lsafiap/framework/logreport/monitor/MonitorUtils;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 123
    sget-object v1, Lsafiap/framework/logreport/monitor/MonitorUtils;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
