.class public Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;
.super Ljava/lang/Object;
.source "CollectMonitorHead.java"


# instance fields
.field public imei:Ljava/lang/String;

.field public phoneNo:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public sendtime:Ljava/lang/String;

.field public system:Ljava/lang/String;

.field public ua:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->imei:Ljava/lang/String;

    .line 15
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->phoneNo:Ljava/lang/String;

    .line 16
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->sendtime:Ljava/lang/String;

    .line 17
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->system:Ljava/lang/String;

    .line 18
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->resolution:Ljava/lang/String;

    .line 19
    const-string v0, "[]"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectMonitorHead;->ua:Ljava/lang/String;

    .line 20
    return-void
.end method
