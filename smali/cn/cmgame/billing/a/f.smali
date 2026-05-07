.class public abstract Lcn/cmgame/billing/a/f;
.super Lcn/cmgame/billing/a/a;
.source "NetContentRequest.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/cmgame/billing/a/a;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Lcn/cmgame/billing/a/h;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/a;-><init>(Lcn/cmgame/billing/a/h;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected al()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 12
    invoke-super {p0}, Lcn/cmgame/billing/a/a;->al()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 13
    const-string v1, "Accept"

    const-string v2, "application/xml"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v1, "Response-Type"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method
