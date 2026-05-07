.class public Lsafiap/framework/data/TimeManager;
.super Ljava/lang/Object;
.source "TimeManager.java"


# static fields
.field private static df:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsafiap/framework/data/TimeManager;->df:Ljava/text/SimpleDateFormat;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNowDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 16
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v2, Lsafiap/framework/data/TimeManager;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "date":Ljava/lang/String;
    return-object v1
.end method
