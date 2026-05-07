.class public abstract Lcn/cmgame/sdk/a/j;
.super Lcn/cmgame/sdk/a/l;
.source "LongAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;J)V
.end method

.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/sdk/a/j;->a(Lcn/cmgame/sdk/c/a;J)V

    .line 27
    return-void
.end method

.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcn/cmgame/sdk/a/j;->b(Lcn/cmgame/sdk/c/a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    return-void
.end method

.method public abstract b(Lcn/cmgame/sdk/c/a;)J
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/j;->b(Lcn/cmgame/sdk/c/a;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/sdk/a/j;->a(Lcn/cmgame/sdk/c/a;J)V

    .line 20
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/sdk/a/j;->a(Lcn/cmgame/sdk/c/a;J)V

    .line 34
    return-void
.end method
