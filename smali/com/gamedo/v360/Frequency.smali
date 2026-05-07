.class public Lcom/gamedo/v360/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamedo/v360/Frequency$Entiry;
    }
.end annotation


# instance fields
.field private changeFlag:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/gamedo/v360/Frequency$Entiry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gamedo/v360/Frequency;->map:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/gamedo/v360/Frequency;->set:Ljava/util/Set;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamedo/v360/Frequency;->changeFlag:Z

    .line 16
    return-void
.end method

.method private dataChanged()V
    .locals 5

    .prologue
    .line 38
    iget-boolean v2, p0, Lcom/gamedo/v360/Frequency;->changeFlag:Z

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/gamedo/v360/Frequency;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void

    .line 43
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 44
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamedo/v360/Frequency;->set:Ljava/util/Set;

    new-instance v4, Lcom/gamedo/v360/Frequency$Entiry;

    iget-object v2, p0, Lcom/gamedo/v360/Frequency;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v4, p0, v1, v2}, Lcom/gamedo/v360/Frequency$Entiry;-><init>(Lcom/gamedo/v360/Frequency;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/gamedo/v360/Frequency;->changeFlag:Z

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/gamedo/v360/Frequency;

    invoke-direct {v0}, Lcom/gamedo/v360/Frequency;-><init>()V

    .line 80
    .local v0, "f":Lcom/gamedo/v360/Frequency;
    const-string v1, "w"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 81
    const-string v1, "w"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 82
    const-string v1, "w"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 84
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 86
    const-string v1, "z"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 87
    const-string v1, "z"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 88
    const-string v1, "z"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 89
    const-string v1, "z"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 91
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 92
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 93
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 94
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/gamedo/v360/Frequency;->getMaxValueItem()Lcom/gamedo/v360/Frequency$Entiry;

    .line 97
    invoke-virtual {v0}, Lcom/gamedo/v360/Frequency;->getDataDesc()Ljava/util/List;

    .line 98
    return-void
.end method


# virtual methods
.method public addStatistics(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/gamedo/v360/Frequency;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 31
    .local v0, "reg":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/gamedo/v360/Frequency;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDataDesc()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gamedo/v360/Frequency$Entiry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/gamedo/v360/Frequency;->dataChanged()V

    .line 68
    iget-object v3, p0, Lcom/gamedo/v360/Frequency;->set:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 69
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamedo/v360/Frequency$Entiry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/gamedo/v360/Frequency$Entiry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    return-object v2

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamedo/v360/Frequency$Entiry;

    .line 72
    .local v0, "fre":Lcom/gamedo/v360/Frequency$Entiry;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/gamedo/v360/Frequency$Entiry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxValueItem()Lcom/gamedo/v360/Frequency$Entiry;
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/gamedo/v360/Frequency;->dataChanged()V

    .line 57
    iget-object v2, p0, Lcom/gamedo/v360/Frequency;->set:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gamedo/v360/Frequency$Entiry;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, "fre":Lcom/gamedo/v360/Frequency$Entiry;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fre":Lcom/gamedo/v360/Frequency$Entiry;
    check-cast v0, Lcom/gamedo/v360/Frequency$Entiry;

    .line 61
    .restart local v0    # "fre":Lcom/gamedo/v360/Frequency$Entiry;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/gamedo/v360/Frequency$Entiry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-object v0
.end method
