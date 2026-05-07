.class public Lcom/gamedo/v360/BillPoint;
.super Ljava/lang/Object;
.source "BillPoint.java"


# instance fields
.field private amountCount:Ljava/lang/String;

.field private billPointId:Ljava/lang/String;

.field private subInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPointMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/BillPoint;->billPointId:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/BillPoint;->amountCount:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamedo/v360/BillPoint;->subInstructions:Ljava/util/ArrayList;

    .line 10
    return-void
.end method


# virtual methods
.method public getAmountCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gamedo/v360/BillPoint;->amountCount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gamedo/v360/BillPoint;->billPointId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubInstructions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPointMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gamedo/v360/BillPoint;->subInstructions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAmountCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "amountCount"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/gamedo/v360/BillPoint;->amountCount:Ljava/lang/String;

    .line 26
    const-string v0, "amountCount"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public setBillPointId(Ljava/lang/String;)V
    .locals 1
    .param p1, "billPointId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gamedo/v360/BillPoint;->billPointId:Ljava/lang/String;

    .line 19
    const-string v0, "billPointId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public setSubInstructions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPointMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "subInstructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gamedo/v360/BillPointMsg;>;"
    iput-object p1, p0, Lcom/gamedo/v360/BillPoint;->subInstructions:Ljava/util/ArrayList;

    .line 33
    return-void
.end method
