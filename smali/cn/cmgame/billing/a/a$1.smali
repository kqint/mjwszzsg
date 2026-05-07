.class Lcn/cmgame/billing/a/a$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/a/a;->am()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic an:Lcn/cmgame/billing/a/a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 279
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    new-array v2, v5, [B

    invoke-static {v1, v2}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;[B)V

    .line 282
    iget-object v1, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v1, v2}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;I)V

    .line 284
    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_1

    .line 292
    iget-object v2, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/cmgame/billing/a/a;->b(Lcn/cmgame/billing/a/a;Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;[B)V

    .line 296
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iget-object v3, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-static {v3}, Lcn/cmgame/billing/a/a;->c(Lcn/cmgame/billing/a/a;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 297
    sget-object v1, Lcn/cmgame/billing/a/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Length mismatch with content - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-static {v3}, Lcn/cmgame/billing/a/a;->d(Lcn/cmgame/billing/a/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-static {v1, v5}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;I)V

    .line 300
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/a/a$1;->an:Lcn/cmgame/billing/a/a;

    invoke-static {v0, p1}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/a;Lorg/apache/http/HttpResponse;)V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method
