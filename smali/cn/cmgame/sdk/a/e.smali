.class public abstract Lcn/cmgame/sdk/a/e;
.super Lcn/cmgame/sdk/a/l;
.source "DoubleAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;D)V
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

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/sdk/a/e;->a(Lcn/cmgame/sdk/c/a;D)V

    .line 27
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/e;->h(Lcn/cmgame/sdk/c/a;)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/cmgame/sdk/a/e;->a(Lcn/cmgame/sdk/c/a;D)V

    .line 20
    return-void
.end method

.method public abstract h(Lcn/cmgame/sdk/c/a;)D
.end method
