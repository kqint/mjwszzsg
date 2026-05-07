.class public Lsafiap/framework/logreport/monitor/collect/Json;
.super Ljava/lang/Object;
.source "Json.java"


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final TEST:Ljava/lang/String; = "test"


# instance fields
.field public TAG:Ljava/lang/String;

.field private execlude:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Json"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/Json;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/Json;->execlude:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/Json;->map:Ljava/util/HashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;)Lsafiap/framework/logreport/monitor/collect/Json;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/collect/Json;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/collect/Json;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object p0
.end method

.method public fillJsonObject(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v2

    .line 74
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 93
    return-void

    .line 75
    :cond_0
    aget-object v1, v2, v3

    .line 76
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, "objvalue":Ljava/lang/Object;
    const-string v8, ""

    .line 79
    .local v8, "value":Ljava/lang/String;
    if-eqz v6, :cond_1

    move-object v8, v6

    .line 80
    check-cast v8, Ljava/lang/String;

    .line 82
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lsafiap/framework/logreport/monitor/collect/Json;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " fillJsonObject "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v9, p0, Lsafiap/framework/logreport/monitor/collect/Json;->execlude:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 74
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    const-class v9, Lsafiap/framework/logreport/monitor/collect/JsonFieldAlias;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 86
    .local v0, "a":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_3

    move-object v4, v0

    .line 87
    check-cast v4, Lsafiap/framework/logreport/monitor/collect/JsonFieldAlias;

    .line 88
    .local v4, "jfa":Lsafiap/framework/logreport/monitor/collect/JsonFieldAlias;
    invoke-interface {v4}, Lsafiap/framework/logreport/monitor/collect/JsonFieldAlias;->value()Ljava/lang/String;

    move-result-object v5

    .line 90
    .end local v4    # "jfa":Lsafiap/framework/logreport/monitor/collect/JsonFieldAlias;
    :cond_3
    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public getJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, p1}, Lsafiap/framework/logreport/monitor/collect/Json;->fillJsonObject(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 100
    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v2, "json":Lorg/json/JSONObject;
    iget-object v7, p0, Lsafiap/framework/logreport/monitor/collect/Json;->map:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    iget-object v7, p0, Lsafiap/framework/logreport/monitor/collect/Json;->execlude:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 64
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 42
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 44
    .local v4, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lsafiap/framework/logreport/monitor/collect/Json;->getJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 48
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, [Ljava/lang/Object;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 49
    check-cast v6, [Ljava/lang/Object;

    .line 50
    .local v6, "objs":[Ljava/lang/Object;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_1

    .line 54
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 52
    :cond_1
    aget-object v7, v6, v0

    invoke-virtual {p0, v7}, Lsafiap/framework/logreport/monitor/collect/Json;->getJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "objs":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lsafiap/framework/logreport/monitor/collect/Json;->getJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method
