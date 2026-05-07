.class public Lsafiap/framework/logreport/monitor/handler/ListenerLogreport;
.super Landroid/content/BroadcastReceiver;
.source "ListenerLogreport.java"


# static fields
.field public static final ACTION_CRASH_ERROR:Ljava/lang/String; = "saf.framework.logreport.action.SERVICE_MONITOR_CRASH_ERROR"

.field public static final ACTION_SENDREPORT:Ljava/lang/String; = "saf.framework.logreport.monitor.handler.ACTION_SENDREPORT"

.field private static final TAG:Ljava/lang/String; = "ListenerLogreport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-string v2, "ListenerLogreport"

    const-string v3, "enter"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v2, "ListenerLogreport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v2, "saf.framework.logreport.action.SERVICE_MONITOR_CRASH_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    const-string v2, "ListenerLogreport"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v2, "ERROR"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "extra":Ljava/lang/String;
    const-string v2, "ListenerLogreport"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-class v2, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    const-string v2, "ERROR"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    .end local v1    # "extra":Ljava/lang/String;
    :cond_2
    const-string v2, "saf.framework.logreport.monitor.handler.ACTION_SENDREPORT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "ListenerLogreport"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-class v2, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
