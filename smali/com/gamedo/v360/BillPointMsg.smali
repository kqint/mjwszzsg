.class public Lcom/gamedo/v360/BillPointMsg;
.super Ljava/lang/Object;
.source "BillPointMsg.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private consumeCode:Ljava/lang/String;

.field private serviceNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->amount:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->consumeCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->serviceNumber:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->consumeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gamedo/v360/BillPointMsg;->serviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gamedo/v360/BillPointMsg;->amount:Ljava/lang/String;

    .line 19
    const-string v0, "setAmount"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public setConsumeCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "consumeCode"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/gamedo/v360/BillPointMsg;->consumeCode:Ljava/lang/String;

    .line 26
    const-string v0, "consumeCode"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public setServiceNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceNumber"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/gamedo/v360/BillPointMsg;->serviceNumber:Ljava/lang/String;

    .line 33
    const-string v0, "serviceNumber"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
