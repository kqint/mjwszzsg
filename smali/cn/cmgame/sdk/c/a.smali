.class public abstract Lcn/cmgame/sdk/c/a;
.super Ljava/lang/Object;
.source "Resource.java"


# static fields
.field private static ip:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;",
            "Lcn/cmgame/sdk/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static iq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/cmgame/sdk/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lcn/cmgame/sdk/c/a;->ip:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/cmgame/sdk/c/a;->iq:Ljava/util/HashMap;

    .line 198
    invoke-static {}, Lcn/cmgame/sdk/c/a;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 199
    invoke-static {}, Lcn/cmgame/sdk/d/b;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 200
    invoke-static {}, Lcn/cmgame/sdk/d/a;->av()Lcn/cmgame/sdk/c/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Lcn/cmgame/sdk/c/b;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcn/cmgame/sdk/c/b;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcn/cmgame/sdk/c/a;->ip:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/c/b;

    return-object v0
.end method

.method public static a(Lcn/cmgame/sdk/c/b;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcn/cmgame/sdk/c/a;->ip:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/cmgame/sdk/c/b;->ir:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcn/cmgame/sdk/c/a;->iq:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method public static aN(Ljava/lang/String;)Lcn/cmgame/sdk/c/b;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    sget-object v0, Lcn/cmgame/sdk/c/a;->iq:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/c/b;

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcn/cmgame/sdk/c/a$1;

    const-class v1, Lcn/cmgame/sdk/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/cmgame/sdk/c/a$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method private final n(Lcn/cmgame/sdk/c/a;)V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    return-void

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/a/b;

    .line 181
    instance-of v1, v0, Lcn/cmgame/sdk/a/l;

    if-eqz v1, :cond_2

    .line 183
    check-cast v0, Lcn/cmgame/sdk/a/l;

    invoke-virtual {v0, p0, p1}, Lcn/cmgame/sdk/a/l;->b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V

    goto :goto_0

    .line 185
    :cond_2
    instance-of v1, v0, Lcn/cmgame/sdk/a/a;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 187
    check-cast v1, Lcn/cmgame/sdk/a/a;

    check-cast v0, Lcn/cmgame/sdk/a/a;

    invoke-virtual {v0, p1}, Lcn/cmgame/sdk/a/a;->c(Lcn/cmgame/sdk/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/cmgame/sdk/a/a;->a(Lcn/cmgame/sdk/c/a;Ljava/util/List;)V

    goto :goto_0

    .line 189
    :cond_3
    instance-of v1, v0, Lcn/cmgame/sdk/a/k;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 191
    check-cast v1, Lcn/cmgame/sdk/a/k;

    check-cast v0, Lcn/cmgame/sdk/a/k;

    invoke-virtual {v0, p1}, Lcn/cmgame/sdk/a/k;->e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/cmgame/sdk/a/k;->a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v2

    .line 99
    const-string v0, "utf-8"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    const-string v0, ""

    invoke-virtual {v2}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    invoke-virtual {v2}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, ""

    invoke-virtual {v2}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 143
    return-void

    .line 102
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    const-string v4, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/cmgame/sdk/a/b;

    .line 107
    instance-of v4, v1, Lcn/cmgame/sdk/a/l;

    if-eqz v4, :cond_2

    .line 109
    check-cast v1, Lcn/cmgame/sdk/a/l;

    invoke-virtual {v1, p0, p1}, Lcn/cmgame/sdk/a/l;->a(Lcn/cmgame/sdk/c/a;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 138
    :cond_1
    :goto_1
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 111
    :cond_2
    instance-of v4, v1, Lcn/cmgame/sdk/a/a;

    if-eqz v4, :cond_4

    .line 113
    check-cast v1, Lcn/cmgame/sdk/a/a;

    .line 114
    invoke-virtual {v1, p0}, Lcn/cmgame/sdk/a/a;->c(Lcn/cmgame/sdk/c/a;)Ljava/util/List;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v1}, Lcn/cmgame/sdk/a/a;->dd()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v5

    .line 119
    const-string v1, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    const-string v1, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/cmgame/sdk/c/b;->dm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 121
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/cmgame/sdk/c/a;

    .line 123
    invoke-virtual {v1, p1}, Lcn/cmgame/sdk/c/a;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_2

    .line 129
    :cond_4
    instance-of v4, v1, Lcn/cmgame/sdk/a/k;

    if-eqz v4, :cond_1

    .line 131
    check-cast v1, Lcn/cmgame/sdk/a/k;

    invoke-virtual {v1, p0}, Lcn/cmgame/sdk/a/k;->e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1, p1}, Lcn/cmgame/sdk/c/a;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 35
    iput-wide p1, p0, Lcn/cmgame/sdk/c/a;->id:J

    .line 36
    return-void
.end method

.method public final dk()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 79
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 81
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 82
    invoke-virtual {p0, v2}, Lcn/cmgame/sdk/c/a;->a(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcn/cmgame/sdk/c/a;->id:J

    return-wide v0
.end method

.method public final l(Lcn/cmgame/sdk/c/a;)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can only shallowCopy the same type of resource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/c/a;->n(Lcn/cmgame/sdk/c/a;)V

    .line 153
    return-void
.end method

.method public final m(Lcn/cmgame/sdk/c/a;)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 159
    const-class v2, Lcn/cmgame/sdk/c/a;

    if-eq v1, v2, :cond_2

    .line 161
    :goto_0
    if-eq v0, v1, :cond_0

    const-class v2, Lcn/cmgame/sdk/c/a;

    if-ne v0, v2, :cond_1

    .line 165
    :cond_0
    const-class v2, Lcn/cmgame/sdk/c/a;

    if-ne v0, v2, :cond_2

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is not a superclass of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/c/a;->n(Lcn/cmgame/sdk/c/a;)V

    .line 173
    return-void
.end method
