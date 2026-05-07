.class public Lsafiap/framework/logreport/monitor/MonitorErrorInfo;
.super Ljava/lang/Object;
.source "MonitorErrorInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public code:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->code:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->time:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->phoneNumber:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public buildToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/logreport/monitor/MonitorErrorInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
