.class Lcom/gamedo/v360/SmsSdk$AccessNetwork;
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
    name = "AccessNetwork"
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
    .line 540
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->this$0:Lcom/gamedo/v360/SmsSdk;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->op:Ljava/lang/String;

    .line 538
    iput-object p3, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->url:Ljava/lang/String;

    .line 539
    iput-object p4, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/gamedo/v360/SmsSdk$AccessNetwork;->params:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-static {}, Lcom/gamedo/v360/smsData;->getInstance()Lcom/gamedo/v360/smsData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gamedo/v360/smsData;->setSmsMesg(Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method
