.class Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;
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
    name = "UserAccessNetwork"
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
    .line 766
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->this$0:Lcom/gamedo/v360/SmsSdk;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->op:Ljava/lang/String;

    .line 763
    iput-object p3, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->url:Ljava/lang/String;

    .line 764
    iput-object p4, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 769
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/gamedo/v360/SmsSdk$UserAccessNetwork;->params:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/gamedo/v360/SmsSdk;->sendGameInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gamedo/v360/SmsSdk;->isSendMes:Z

    .line 771
    const-string v1, "<------->"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method
