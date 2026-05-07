.class public Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
.super Ljava/lang/Object;
.source "LogreportErrorBean.java"


# instance fields
.field private CrashLog:Ljava/lang/String;

.field private ErrorCode:Ljava/lang/String;

.field private TimeStamp:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field public isPost:I

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->ErrorCode:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->TimeStamp:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->phoneNumber:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->CrashLog:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getCrashLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->CrashLog:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->ErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->TimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setCrashLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashLog"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->CrashLog:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->ErrorCode:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->id:Ljava/lang/String;

    .line 36
    :cond_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->phoneNumber:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->TimeStamp:Ljava/lang/String;

    .line 54
    return-void
.end method
