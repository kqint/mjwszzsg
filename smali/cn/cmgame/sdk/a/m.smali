.class public abstract Lcn/cmgame/sdk/a/m;
.super Lcn/cmgame/sdk/a/l;
.source "StringAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;
.end method

.method public abstract a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
.end method

.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/m;->a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V

    .line 29
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
    .line 42
    invoke-virtual {p0, p1}, Lcn/cmgame/sdk/a/m;->a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    :cond_0
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/m;->a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/m;->a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V

    .line 22
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
    .line 35
    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/cmgame/sdk/a/m;->a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V

    .line 36
    return-void
.end method
