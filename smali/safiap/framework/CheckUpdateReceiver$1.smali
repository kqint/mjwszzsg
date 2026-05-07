.class Lsafiap/framework/CheckUpdateReceiver$1;
.super Ljava/lang/Object;
.source "CheckUpdateReceiver.java"

# interfaces
.implements Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/CheckUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/CheckUpdateReceiver;

.field private final synthetic val$dataName:Ljava/lang/String;

.field private final synthetic val$dataPort:I

.field private final synthetic val$manager:Lsafiap/framework/data/SharedDataManager;


# direct methods
.method constructor <init>(Lsafiap/framework/CheckUpdateReceiver;Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->this$0:Lsafiap/framework/CheckUpdateReceiver;

    iput-object p2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iput-object p3, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataName:Ljava/lang/String;

    iput p4, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataPort:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public peerValidation(I)V
    .locals 4
    .param p1, "validation"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->this$0:Lsafiap/framework/CheckUpdateReceiver;

    invoke-static {v1}, Lsafiap/framework/CheckUpdateReceiver;->access$0(Lsafiap/framework/CheckUpdateReceiver;)Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check shared data seeker, result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 75
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_1

    .line 77
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget-object v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsafiap/framework/data/SharedDataManager;->getDataByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->this$0:Lsafiap/framework/CheckUpdateReceiver;

    invoke-static {v1}, Lsafiap/framework/CheckUpdateReceiver;->access$0(Lsafiap/framework/CheckUpdateReceiver;)Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetch data from files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataPort:I

    invoke-virtual {v1, v2, v0}, Lsafiap/framework/data/SharedDataManager;->sendSharedData(ILjava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataPort:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lsafiap/framework/data/SharedDataManager;->sendSharedData(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget-object v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsafiap/framework/data/SharedDataManager;->getDataByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "data":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->this$0:Lsafiap/framework/CheckUpdateReceiver;

    invoke-static {v1}, Lsafiap/framework/CheckUpdateReceiver;->access$0(Lsafiap/framework/CheckUpdateReceiver;)Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetch data from files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataPort:I

    invoke-virtual {v1, v2, v0}, Lsafiap/framework/data/SharedDataManager;->sendSharedData(ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$manager:Lsafiap/framework/data/SharedDataManager;

    iget v2, p0, Lsafiap/framework/CheckUpdateReceiver$1;->val$dataPort:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lsafiap/framework/data/SharedDataManager;->sendSharedData(ILjava/lang/String;)V

    goto :goto_0
.end method
