.class public abstract Lcn/cmgame/sdk/a/g;
.super Lcn/cmgame/sdk/a/l;
.source "FloatAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;F)V
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
    .line 25
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/g;->a(Lcn/cmgame/sdk/c/a;F)V

    .line 26
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/g;->j(Lcn/cmgame/sdk/c/a;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/g;->a(Lcn/cmgame/sdk/c/a;F)V

    .line 19
    return-void
.end method

.method public abstract j(Lcn/cmgame/sdk/c/a;)F
.end method
