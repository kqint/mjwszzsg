.class Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;
.super Ljava/lang/Object;
.source "LogreportHandler.java"

# interfaces
.implements Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->runHttpTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;


# direct methods
.method constructor <init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "LogreportHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v0

    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$8(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v0}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$9(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 389
    const-string v1, "LogreportHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " <---> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-nez p1, :cond_0

    .line 396
    :try_start_0
    const-string v1, "LogreportHandler"

    const-string v2, "no response result"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$2(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V

    .line 401
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    .line 435
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v1, "result: OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const-string v1, "LogreportHandler"

    const-string v2, "onResponse --> Success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$7(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    iput-boolean v4, v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    goto :goto_0

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "LogreportHandler"

    const-string v2, "onResponse --> Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$2(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V

    .line 420
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$3;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
