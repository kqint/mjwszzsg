.class public Lcn/cmgame/billing/a/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/a/c$a;,
        Lcn/cmgame/billing/a/c$b;
    }
.end annotation


# static fields
.field private static final ao:I = 0x2

.field private static final ap:I = 0x4

.field private static final aq:I = 0x1e

.field private static at:Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field private ar:Lcn/cmgame/billing/a/j;

.field final as:Ljava/util/concurrent/ExecutorService;

.field private au:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcn/cmgame/billing/a/c;->aq()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 91
    new-instance v0, Lcn/cmgame/billing/a/c$a;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/a/c$a;-><init>(Lcn/cmgame/billing/a/c;)V

    iput-object v0, p0, Lcn/cmgame/billing/a/c;->as:Ljava/util/concurrent/ExecutorService;

    .line 92
    new-instance v0, Lcn/cmgame/billing/a/j;

    invoke-direct {v0, p1, p2}, Lcn/cmgame/billing/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/cmgame/billing/a/c;->ar:Lcn/cmgame/billing/a/j;

    .line 93
    iput-object p3, p0, Lcn/cmgame/billing/a/c;->au:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcn/cmgame/billing/a/c$1;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/a/c$1;-><init>(Lcn/cmgame/billing/a/c;)V

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/c;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 104
    new-instance v0, Lcn/cmgame/billing/a/c$2;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/a/c$2;-><init>(Lcn/cmgame/billing/a/c;)V

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/c;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 123
    return-void
.end method

.method static final aq()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 73
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 75
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v1, Lcn/cmgame/billing/a/c;->at:Lorg/apache/http/conn/ClientConnectionManager;

    .line 76
    sget-object v0, Lcn/cmgame/billing/a/c;->at:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/cmgame/billing/a/c;->au:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/a/c;)Lcn/cmgame/billing/a/j;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/cmgame/billing/a/c;->ar:Lcn/cmgame/billing/a/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcn/cmgame/billing/a/a;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p1}, Lcn/cmgame/billing/a/a;->ae()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/billing/a/c;->a(Lcn/cmgame/billing/a/a;J)V

    .line 127
    return-void
.end method

.method public final a(Lcn/cmgame/billing/a/a;J)V
    .locals 7

    .prologue
    .line 130
    new-instance v6, Lcn/cmgame/billing/a/c$3;

    invoke-direct {v6, p0, p1}, Lcn/cmgame/billing/a/c$3;-><init>(Lcn/cmgame/billing/a/c;Lcn/cmgame/billing/a/a;)V

    .line 136
    new-instance v2, Lcn/cmgame/billing/a/c$4;

    invoke-direct {v2, p0, p1, v6}, Lcn/cmgame/billing/a/c$4;-><init>(Lcn/cmgame/billing/a/c;Lcn/cmgame/billing/a/a;Ljava/lang/Runnable;)V

    .line 143
    new-instance v0, Lcn/cmgame/billing/a/c$5;

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcn/cmgame/billing/a/c$5;-><init>(Lcn/cmgame/billing/a/c;Ljava/lang/Runnable;JLcn/cmgame/billing/a/a;Ljava/lang/Runnable;)V

    .line 154
    iget-object v1, p0, Lcn/cmgame/billing/a/c;->as:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/cmgame/billing/a/a;->a(Ljava/util/concurrent/Future;)V

    .line 155
    return-void
.end method
