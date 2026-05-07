.class public Lcom/gamedo/v360/Frequency$Entiry;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamedo/v360/Frequency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entiry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/gamedo/v360/Frequency$Entiry;",
        ">;"
    }
.end annotation


# instance fields
.field private count:Ljava/lang/Integer;

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/gamedo/v360/Frequency;


# direct methods
.method public constructor <init>(Lcom/gamedo/v360/Frequency;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/gamedo/v360/Frequency$Entiry;->this$0:Lcom/gamedo/v360/Frequency;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/gamedo/v360/Frequency$Entiry;->key:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/gamedo/v360/Frequency$Entiry;->count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gamedo/v360/Frequency$Entiry;)I
    .locals 3
    .param p1, "o"    # Lcom/gamedo/v360/Frequency$Entiry;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/gamedo/v360/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/gamedo/v360/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v1, v2

    .line 109
    .local v0, "cmp":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/gamedo/v360/Frequency$Entiry;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/gamedo/v360/Frequency$Entiry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gamedo/v360/Frequency$Entiry;

    invoke-virtual {p0, p1}, Lcom/gamedo/v360/Frequency$Entiry;->compareTo(Lcom/gamedo/v360/Frequency$Entiry;)I

    move-result v0

    return v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gamedo/v360/Frequency$Entiry;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gamedo/v360/Frequency$Entiry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gamedo/v360/Frequency$Entiry;->key:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u51fa\u73b0\u7684\u6b21\u6570\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gamedo/v360/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
