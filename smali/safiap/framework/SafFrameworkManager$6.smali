.class Lsafiap/framework/SafFrameworkManager$6;
.super Ljava/lang/Object;
.source "SafFrameworkManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/SafFrameworkManager;->startLogService()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$6;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Thread;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .prologue
    .line 968
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$6;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v1, p2}, Lsafiap/framework/SafFrameworkManager;->showCrashReport(Ljava/lang/Throwable;)V

    .line 970
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$6;->this$0:Lsafiap/framework/SafFrameworkManager;

    const-string v2, "ERROR"

    invoke-static {v1, v2}, Lsafiap/framework/logreport/monitor/MonitorUtils;->sendMontitorErrorInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 972
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$8()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uncaughtException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$6;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$22(Lsafiap/framework/SafFrameworkManager;)V

    .line 984
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
