.class Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;
.super Ljava/lang/Object;
.source "LogreportHandler.java"

# interfaces
.implements Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->postData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    iput-object p2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->val$list:Ljava/util/List;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    const-string v2, "LogreportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add post  -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v4}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v2

    iget-object v3, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 116
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$1(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Lsafiap/framework/logreport/monitor/handler/LogreportHandler$OnPostEnd;)V

    .line 117
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2, v5}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$2(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V

    .line 118
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2, v5}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$3(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V

    .line 120
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$4(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 121
    const-string v2, "LogreportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-->:updateErrorIdList:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v4}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$4(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;

    move-result-object v3

    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$4(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)Ljava/util/List;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->updateTocommitted([Ljava/lang/Integer;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$4(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 129
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->listUncommitted()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 131
    .local v1, "t_Max":I
    const-string v2, "LogreportHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Left list size -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    iput-boolean v5, v2, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->m_SendFlag:Z

    .line 136
    if-eqz v1, :cond_1

    .line 137
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$5(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)V

    .line 146
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;>;"
    .end local v1    # "t_Max":I
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    iget-object v3, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->val$list:Ljava/util/List;

    iget-object v4, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v4}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$6(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/util/List;I)V

    .line 145
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$1;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-static {v2}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$0(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$2(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;I)V

    goto :goto_0
.end method
