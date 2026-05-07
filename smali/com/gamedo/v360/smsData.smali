.class public Lcom/gamedo/v360/smsData;
.super Ljava/lang/Object;
.source "smsData.java"


# static fields
.field static instance:Lcom/gamedo/v360/smsData;


# instance fields
.field private billPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPoint;",
            ">;"
        }
    .end annotation
.end field

.field private billType:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private operatorId:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private protocolType:Ljava/lang/String;

.field private smsMesg:Ljava/lang/String;

.field private tips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/gamedo/v360/smsData;->instance:Lcom/gamedo/v360/smsData;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->smsMesg:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->protocolType:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->protocol:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->command:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->code:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->tips:Ljava/lang/String;

    .line 70
    const-string v0, "1"

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->billType:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->operatorId:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamedo/v360/smsData;->billPoints:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/gamedo/v360/smsData;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/gamedo/v360/smsData;->instance:Lcom/gamedo/v360/smsData;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/gamedo/v360/smsData;

    invoke-direct {v0}, Lcom/gamedo/v360/smsData;-><init>()V

    sput-object v0, Lcom/gamedo/v360/smsData;->instance:Lcom/gamedo/v360/smsData;

    .line 34
    :cond_0
    sget-object v0, Lcom/gamedo/v360/smsData;->instance:Lcom/gamedo/v360/smsData;

    return-object v0
.end method


# virtual methods
.method public getBillPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->billPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBillType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->billType:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->operatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsMesg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->smsMesg:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gamedo/v360/smsData;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 9
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->smsMesg:Ljava/lang/String;

    .line 43
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v6, "protocolType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gamedo/v360/smsData;->setProtocolType(Ljava/lang/String;)V

    .line 45
    const-string v6, "protocol"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gamedo/v360/smsData;->setProtocol(Ljava/lang/String;)V

    .line 46
    const-string v6, "command"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gamedo/v360/smsData;->setCommand(Ljava/lang/String;)V

    .line 47
    const-string v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 48
    .local v4, "result":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gamedo/v360/smsData;->setCode(Ljava/lang/String;)V

    .line 49
    const-string v6, "tips"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/gamedo/v360/smsData;->setTips(Ljava/lang/String;)V

    .line 50
    const-string v6, "Instructions"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    .local v0, "billPoint":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 64
    .end local v0    # "billPoint":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 53
    .restart local v0    # "billPoint":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "result":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "temp":Ljava/lang/String;
    sget-object v6, Lcom/gamedo/v360/SmsSdk;->smsDxData:[[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aput-object v5, v6, v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "billPoint":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "smsdata error="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/gamedo/v360/smsData;->smsMesg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBillPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gamedo/v360/BillPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "billPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gamedo/v360/BillPoint;>;"
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->billPoints:Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public setBillType(Ljava/lang/String;)V
    .locals 1
    .param p1, "billType"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->billType:Ljava/lang/String;

    .line 119
    const-string v0, "billType"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->code:Ljava/lang/String;

    .line 105
    const-string v0, "code"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->command:Ljava/lang/String;

    .line 98
    const-string v0, "command"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public setOperatorId(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->operatorId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->protocol:Ljava/lang/String;

    .line 91
    const-string v0, "protocol"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->protocolType:Ljava/lang/String;

    .line 84
    const-string v0, "protocolType"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public setSmsMesg(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsMesg"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->smsMesg:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/gamedo/v360/smsData;->init(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/gamedo/v360/smsData;->tips:Ljava/lang/String;

    .line 112
    const-string v0, "tips"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
