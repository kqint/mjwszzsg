.class public abstract Lcn/cmgame/sdk/a/l;
.super Lcn/cmgame/sdk/a/b;
.source "PrimitiveAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
.end method

.method public abstract b(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
