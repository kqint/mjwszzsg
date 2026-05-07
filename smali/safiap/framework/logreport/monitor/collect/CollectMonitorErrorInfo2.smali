.class public Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;
.super Ljava/lang/Object;
.source "CollectMonitorErrorInfo2.java"


# instance fields
.field public CrashLog:Ljava/lang/String;

.field public IPlog:Ljava/lang/String;

.field public NetVisitLog:Ljava/lang/String;

.field public RunningProInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;->NetVisitLog:Ljava/lang/String;

    .line 14
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;->CrashLog:Ljava/lang/String;

    .line 15
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;->IPlog:Ljava/lang/String;

    .line 16
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorErrorInfo2;->RunningProInfo:Ljava/lang/String;

    .line 17
    return-void
.end method
