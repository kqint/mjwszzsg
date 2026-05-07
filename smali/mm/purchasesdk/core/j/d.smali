.class public Lmm/purchasesdk/core/j/d;
.super Lmm/purchasesdk/core/h/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmm/purchasesdk/core/h/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/j/d;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    invoke-virtual {p3, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmm/purchasesdk/core/j/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/j/d;-><init>()V

    goto :goto_1

    :pswitch_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ReturnCode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/core/j/d;->W(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/j/d;->W(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "ErrorMsg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/core/j/d;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/j/d;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public d()I
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lmm/purchasesdk/core/j/d;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x258

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x259

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x25b

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x25c

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x25d

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
