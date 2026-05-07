.class public abstract Lcn/cmgame/sdk/a/c;
.super Lcn/cmgame/sdk/a/l;
.source "BooleanAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
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

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/c;->a(Lcn/cmgame/sdk/c/a;Z)V

    .line 27
    return-void
.end method

.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcn/cmgame/sdk/a/c;->d(Lcn/cmgame/sdk/c/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    return-void
.end method

.method public abstract a(Lcn/cmgame/sdk/c/a;Z)V
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/c;->d(Lcn/cmgame/sdk/c/a;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/c;->a(Lcn/cmgame/sdk/c/a;Z)V

    .line 20
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/c;->a(Lcn/cmgame/sdk/c/a;Z)V

    .line 34
    return-void
.end method

.method public abstract d(Lcn/cmgame/sdk/c/a;)Z
.end method
