.class public Lmm/purchasesdk/core/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/b/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lmm/purchasesdk/core/g/b;

    invoke-direct {v2, p0}, Lmm/purchasesdk/core/g/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/core/g/e;

    invoke-direct {v2, p0}, Lmm/purchasesdk/core/g/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/core/b/c;

    invoke-direct {v2}, Lmm/purchasesdk/core/b/c;-><init>()V

    new-instance v3, Lmm/purchasesdk/core/b/d;

    invoke-direct {v3}, Lmm/purchasesdk/core/b/d;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/b/c;->j(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->d()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/b/c;->a(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/g/c;

    :try_start_0
    invoke-interface {v0, v2, v3, p2}, Lmm/purchasesdk/core/g/c;->a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->P(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmm/purchasesdk/core/h/d;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmm/purchasesdk/core/b/b;->a(Lmm/purchasesdk/core/b/d;Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->n()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    const/4 v6, 0x0

    :try_start_2
    array-length v7, v5

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->s(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->q(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->e(Z)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->c()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->b(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->I(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmm/purchasesdk/core/h/a;->J(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->c(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->d(Z)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->a()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x111

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lmm/purchasesdk/core/b/b;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "base 64 decrypt license file failure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->a(Lmm/purchasesdk/core/c/d;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->l(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/core/b/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Lmm/purchasesdk/core/h/e; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/16 v5, 0x73

    invoke-static {v5}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    sget-object v5, Lmm/purchasesdk/core/b/b;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAuth failure "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lmm/purchasesdk/core/b/a;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MM_User_Authorization"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lmm/purchasesdk/core/b/a;

    invoke-direct {v0}, Lmm/purchasesdk/core/b/a;-><init>()V

    goto :goto_1

    :cond_1
    const-string v3, "IMEI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->imei:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->v:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, "mobile_phone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->w:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "APPUID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->x:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v3, "cotnentID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->y:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v3, "PayCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->E:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, "order_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->z:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, "notBeforetime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm/purchasesdk/core/b/a;->b:J

    const-string v2, "AUTH_XML"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lmm/purchasesdk/core/b/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "notAftertime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm/purchasesdk/core/b/a;->c:J

    const-string v2, "AUTH_XML"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lmm/purchasesdk/core/b/a;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "digestAlg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->A:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v3, "digest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->B:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v3, "timestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->C:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v3, "SignatureValue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/core/b/a;->D:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    if-eqz v0, :cond_f

    iget-object v2, v0, Lmm/purchasesdk/core/b/a;->x:Ljava/lang/String;

    if-nez v2, :cond_f

    move-object v0, v1

    :cond_f
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static a([BLjava/lang/String;)Lmm/purchasesdk/core/b/a;
    .locals 2

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lmm/purchasesdk/core/b/b;->a(Lorg/xmlpull/v1/XmlPullParser;)Lmm/purchasesdk/core/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmm/purchasesdk/core/b/d;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmm/purchasesdk/core/b/d;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/core/b/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dyQuestion-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmm/purchasesdk/fingerprint/c;->q:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmm/purchasesdk/core/b/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/fingerprint/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/fingerprint/c;->q:Ljava/lang/Boolean;

    goto :goto_0
.end method
