.class final Lcn/cmgame/billing/a/c$a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic av:Lcn/cmgame/billing/a/c;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/c;)V
    .locals 8

    .prologue
    .line 80
    iput-object p1, p0, Lcn/cmgame/billing/a/c$a;->av:Lcn/cmgame/billing/a/c;

    .line 81
    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcn/cmgame/billing/a/c$a$1;

    invoke-direct {v7, p1}, Lcn/cmgame/billing/a/c$a$1;-><init>(Lcn/cmgame/billing/a/c;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 86
    return-void
.end method
