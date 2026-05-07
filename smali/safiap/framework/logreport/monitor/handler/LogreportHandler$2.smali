.class Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;
.super Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;
.source "LogreportHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

.field private final synthetic val$meb:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

.field private final synthetic val$mei:Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;


# direct methods
.method constructor <init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/lang/String;Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    iput-object p3, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$meb:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    iput-object p4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$mei:Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;

    .line 182
    invoke-direct {p0, p2}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPost(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "LogreportHandler"

    const-string v1, "collecting crash info to DB"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$meb:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-virtual {v0, p1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setCrashLog(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$meb:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$mei:Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;

    iget-object v1, v1, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo;->TimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setTimeStamp(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->val$meb:Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-virtual {v0, v1}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->insertMusicError(Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;)V

    .line 194
    const-string v0, "LogreportHandler"

    const-string v1, "enter ACTION_CRASH_ERROR send"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$2;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$5(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V

    .line 198
    const-string v0, "LogreportHandler"

    const-string v1, "leave ACTION_CRASH_ERROR send"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
