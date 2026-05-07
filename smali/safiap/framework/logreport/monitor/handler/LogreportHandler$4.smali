.class Lsafiap/framework/logreport/monitor/handler/LogreportHandler$4;
.super Ljava/lang/Object;
.source "LogreportHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->postByIndex(Ljava/util/List;I)V
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
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$4;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/handler/LogreportHandler$4;->this$0:Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    const-string v1, "crash"

    invoke-static {v0, v1}, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;->access$10(Lsafiap/framework/logreport/monitor/handler/LogreportHandler;Ljava/lang/String;)V

    .line 511
    return-void
.end method
