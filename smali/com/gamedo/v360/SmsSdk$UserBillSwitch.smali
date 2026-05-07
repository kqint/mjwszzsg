.class Lcom/gamedo/v360/SmsSdk$UserBillSwitch;
.super Ljava/lang/Object;
.source "SmsSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamedo/v360/SmsSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserBillSwitch"
.end annotation


# instance fields
.field private op:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field final synthetic this$0:Lcom/gamedo/v360/SmsSdk;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gamedo/v360/SmsSdk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->this$0:Lcom/gamedo/v360/SmsSdk;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p2, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->op:Ljava/lang/String;

    .line 785
    iput-object p3, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->url:Ljava/lang/String;

    .line 786
    iput-object p4, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 790
    iget-object v4, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget-object v5, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/gamedo/v360/SmsSdk$UserBillSwitch;->params:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 793
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 794
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 795
    .local v0, "_j":Lorg/json/JSONObject;
    const-string v4, "value"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gamedo/v360/SmsSdk;->_UserBillSwitch:Ljava/lang/String;

    .line 797
    sget-object v4, Lcom/gamedo/v360/SmsSdk;->_UserBillSwitch:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/gamedo/v360/sanguoAndroid360;->nativeUserBillSwitch(I)V

    .line 799
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba1\u8d39\u72b6\u6001\uff1a---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/gamedo/v360/SmsSdk;->_UserBillSwitch:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v0    # "_j":Lorg/json/JSONObject;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
