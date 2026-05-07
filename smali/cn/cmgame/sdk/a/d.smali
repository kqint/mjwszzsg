.class public abstract Lcn/cmgame/sdk/a/d;
.super Lcn/cmgame/sdk/a/l;
.source "DateAttribute.java"


# static fields
.field static hd:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcn/cmgame/sdk/a/d;->de()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/a/d;->hd:Ljava/text/DateFormat;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    return-void
.end method

.method static de()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V
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
    .line 43
    :try_start_0
    sget-object v0, Lcn/cmgame/sdk/a/d;->hd:Ljava/text/DateFormat;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/d;->a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/d;->a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcn/cmgame/sdk/a/d;->g(Lcn/cmgame/sdk/c/a;)Ljava/util/Date;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcn/cmgame/sdk/a/d;->hd:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    :cond_0
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/d;->g(Lcn/cmgame/sdk/c/a;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/d;->a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V

    .line 26
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
    .line 57
    :try_start_0
    sget-object v0, Lcn/cmgame/sdk/a/d;->hd:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/d;->a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/d;->a(Lcn/cmgame/sdk/c/a;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public abstract g(Lcn/cmgame/sdk/c/a;)Ljava/util/Date;
.end method
