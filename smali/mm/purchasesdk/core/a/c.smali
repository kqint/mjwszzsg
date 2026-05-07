.class public Lmm/purchasesdk/core/a/c;
.super Lmm/purchasesdk/core/h/g;


# instance fields
.field private a:Lmm/purchasesdk/core/c/d;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/core/h/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->a:Lmm/purchasesdk/core/c/d;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->u:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/c/d;
    .locals 12

    const v11, -0x9a00

    const/high16 v10, -0x1000000

    const/4 v2, 0x0

    new-instance v4, Lmm/purchasesdk/core/c/d;

    invoke-direct {v4}, Lmm/purchasesdk/core/c/d;-><init>()V

    const-string v3, ""

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v0, "type"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v7, "id"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lmm/purchasesdk/core/c/d;->e(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "mobile"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v7, "id"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmm/purchasesdk/core/c/d;->F(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "Item"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object v1, v3

    move v3, v2

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v6, "id"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lmm/purchasesdk/core/ui/an;

    invoke-direct {v8}, Lmm/purchasesdk/core/ui/an;-><init>()V

    iput-object v6, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    iput-object v0, v8, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    iget-object v6, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v9, "itemprice"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    iget-object v1, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "totalprice"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "itemcount"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "itemprice"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v8, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "renttime"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput v11, v8, Lmm/purchasesdk/core/ui/an;->R:I

    :goto_4
    invoke-virtual {v4, v7}, Lmm/purchasesdk/core/c/d;->G(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Lmm/purchasesdk/core/c/d;->a(Ljava/lang/String;Lmm/purchasesdk/core/ui/an;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_2

    :cond_3
    iput v10, v8, Lmm/purchasesdk/core/ui/an;->R:I

    goto :goto_4

    :cond_4
    new-instance v0, Lmm/purchasesdk/core/ui/an;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/an;-><init>()V

    const-string v3, "\u6570\u91cf"

    const-string v5, "itemcount"

    iput-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    iget-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "totalprice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "itemcount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "itemprice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v6, "renttime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    iput v11, v0, Lmm/purchasesdk/core/ui/an;->R:I

    :goto_5
    invoke-virtual {v4, v3}, Lmm/purchasesdk/core/c/d;->G(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v0}, Lmm/purchasesdk/core/c/d;->a(Ljava/lang/String;Lmm/purchasesdk/core/ui/an;)V

    new-instance v0, Lmm/purchasesdk/core/ui/an;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/an;-><init>()V

    const-string v3, "\u652f\u4ed8\u91d1\u989d"

    const-string v5, "totalprice"

    iput-object v5, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5143"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    iget-object v1, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v2, "totalprice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v2, "itemcount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v2, "itemprice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lmm/purchasesdk/core/ui/an;->bk:Ljava/lang/String;

    const-string v2, "renttime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iput v11, v0, Lmm/purchasesdk/core/ui/an;->R:I

    :goto_6
    invoke-virtual {v4, v3}, Lmm/purchasesdk/core/c/d;->G(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v0}, Lmm/purchasesdk/core/c/d;->a(Ljava/lang/String;Lmm/purchasesdk/core/ui/an;)V

    return-object v4

    :cond_7
    iput v10, v0, Lmm/purchasesdk/core/ui/an;->R:I

    goto/16 :goto_5

    :cond_8
    iput v10, v0, Lmm/purchasesdk/core/ui/an;->R:I

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public a()Lmm/purchasesdk/core/c/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/a/c;->a:Lmm/purchasesdk/core/c/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "utf-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReturnCode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->W(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "PaycodeInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "<PaycodeInfo>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "</PaycodeInfo>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->g(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v0, p2}, Lmm/purchasesdk/core/a/c;->a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/c/d;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/a/c;->a:Lmm/purchasesdk/core/c/d;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v2, "MsgType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "Version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "RespMd5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "ErrorMsg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/a/c;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/a/c;->r:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/a/c;->t:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/a/c;->s:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/a/c;->u:Ljava/lang/String;

    return-void
.end method
