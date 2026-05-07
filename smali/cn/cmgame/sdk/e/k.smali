.class public Lcn/cmgame/sdk/e/k;
.super Ljava/lang/Object;
.source "XmlResourceParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlResourceParser"


# instance fields
.field private kS:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    return-void
.end method

.method private b(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/e/k;->c(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->aD()Lcn/cmgame/sdk/c/a;

    move-result-object v4

    .line 52
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 56
    :goto_0
    const-string v0, "consumercodelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    .line 62
    :goto_1
    const-string v2, ""

    .line 63
    const-string v2, ""

    .line 64
    :goto_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move-object v0, v4

    .line 108
    :goto_3
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_3
    :goto_4
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, v0

    .line 69
    :goto_5
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 70
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lt v2, v0, :cond_6

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/a/b;

    .line 80
    instance-of v2, v0, Lcn/cmgame/sdk/a/l;

    if-eqz v2, :cond_9

    .line 81
    check-cast v0, Lcn/cmgame/sdk/a/l;

    .line 82
    iget-object v2, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/l;->a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    .line 71
    :cond_6
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 73
    :goto_7
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/a/b;

    .line 74
    if-eqz v0, :cond_7

    .line 75
    check-cast v0, Lcn/cmgame/sdk/a/l;

    iget-object v5, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/cmgame/sdk/a/l;->b(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V

    .line 70
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 72
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 83
    :cond_9
    instance-of v2, v0, Lcn/cmgame/sdk/a/k;

    if-eqz v2, :cond_b

    .line 84
    check-cast v0, Lcn/cmgame/sdk/a/k;

    .line 85
    invoke-virtual {v0}, Lcn/cmgame/sdk/a/k;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_a

    .line 87
    invoke-direct {p0, v2}, Lcn/cmgame/sdk/e/k;->b(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/k;->a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V

    goto/16 :goto_4

    .line 89
    :cond_a
    const-string v2, "XmlResourceParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "unknown "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/cmgame/sdk/a/k;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 91
    :cond_b
    instance-of v2, v0, Lcn/cmgame/sdk/a/a;

    if-eqz v2, :cond_3

    .line 92
    check-cast v0, Lcn/cmgame/sdk/a/a;

    .line 93
    invoke-direct {p0}, Lcn/cmgame/sdk/e/k;->dT()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/a;->a(Lcn/cmgame/sdk/c/a;Ljava/util/List;)V

    goto/16 :goto_4

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    .line 101
    goto/16 :goto_3

    .line 65
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/e/k;->e(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v0

    return-object v0
.end method

.method private dT()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcn/cmgame/sdk/e/k;->dU()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private dU()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    :goto_0
    iget-object v2, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 185
    :goto_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v0, v1

    .line 199
    :goto_2
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 196
    :cond_2
    :goto_3
    iget-object v2, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 188
    :pswitch_0
    invoke-direct {p0}, Lcn/cmgame/sdk/e/k;->dV()Lcn/cmgame/sdk/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    :pswitch_1
    iget-object v2, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 192
    goto :goto_2

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dV()Lcn/cmgame/sdk/c/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->aN(Ljava/lang/String;)Lcn/cmgame/sdk/c/b;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Don\'t know class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    invoke-direct {p0, v1}, Lcn/cmgame/sdk/e/k;->d(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->aD()Lcn/cmgame/sdk/c/a;

    move-result-object v4

    .line 121
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 123
    :goto_0
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 125
    const-string v2, ""

    .line 126
    const-string v2, ""

    .line 127
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move-object v0, v4

    .line 176
    :goto_2
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 128
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v3, v0

    .line 132
    :goto_3
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 133
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lt v2, v0, :cond_5

    .line 142
    :cond_3
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/a/b;

    .line 143
    if-eqz v0, :cond_2

    .line 145
    instance-of v2, v0, Lcn/cmgame/sdk/a/l;

    if-eqz v2, :cond_8

    .line 146
    check-cast v0, Lcn/cmgame/sdk/a/l;

    .line 147
    iget-object v2, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/l;->a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 163
    :goto_5
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    .line 164
    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    .line 134
    :cond_5
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    :goto_6
    invoke-virtual {p1}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/a/b;

    .line 137
    if-eqz v0, :cond_6

    .line 138
    check-cast v0, Lcn/cmgame/sdk/a/l;

    iget-object v5, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/cmgame/sdk/a/l;->b(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V

    .line 133
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 148
    :cond_8
    instance-of v2, v0, Lcn/cmgame/sdk/a/k;

    if-eqz v2, :cond_a

    .line 149
    check-cast v0, Lcn/cmgame/sdk/a/k;

    .line 150
    invoke-virtual {v0}, Lcn/cmgame/sdk/a/k;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_9

    .line 152
    invoke-direct {p0, v2}, Lcn/cmgame/sdk/e/k;->b(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/k;->a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V

    goto :goto_5

    .line 154
    :cond_9
    const-string v2, "XmlResourceParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/cmgame/sdk/a/k;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 156
    :cond_a
    instance-of v2, v0, Lcn/cmgame/sdk/a/a;

    if-eqz v2, :cond_b

    .line 157
    check-cast v0, Lcn/cmgame/sdk/a/a;

    .line 158
    invoke-direct {p0}, Lcn/cmgame/sdk/e/k;->dT()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/cmgame/sdk/a/a;->a(Lcn/cmgame/sdk/c/a;Ljava/util/List;)V

    goto :goto_5

    .line 160
    :cond_b
    const-string v0, "XmlResourceParser"

    const-string v2, "Totally don\'t know what to do about this attribute"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_5

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    .line 170
    goto/16 :goto_2

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dS()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 43
    return-object v0

    .line 32
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 33
    iget-object v0, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->aN(Ljava/lang/String;)Lcn/cmgame/sdk/c/b;

    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown toplevel class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_1
    invoke-direct {p0, v1}, Lcn/cmgame/sdk/e/k;->c(Lcn/cmgame/sdk/c/b;)Lcn/cmgame/sdk/c/a;

    move-result-object v0

    .line 40
    :cond_2
    iget-object v1, p0, Lcn/cmgame/sdk/e/k;->kS:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method
