.class Lsafiap/framework/data/SharedDataManager$1$1;
.super Ljava/lang/Object;
.source "SharedDataManager.java"

# interfaces
.implements Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/data/SharedDataManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsafiap/framework/data/SharedDataManager$1;

.field private final synthetic val$message2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsafiap/framework/data/SharedDataManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$1$1;->this$1:Lsafiap/framework/data/SharedDataManager$1;

    iput-object p2, p0, Lsafiap/framework/data/SharedDataManager$1$1;->val$message2:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public peerValidation(I)V
    .locals 4
    .param p1, "validation"    # I

    .prologue
    .line 267
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check shared data seeker, result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 268
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_1

    .line 270
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$1$1;->this$1:Lsafiap/framework/data/SharedDataManager$1;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager$1;->access$0(Lsafiap/framework/data/SharedDataManager$1;)Lsafiap/framework/data/SharedDataManager;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/data/SharedDataManager$1$1;->val$message2:Ljava/lang/String;

    invoke-static {v1, v2}, Lsafiap/framework/data/SharedDataManager;->access$3(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "messageBody":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$1$1;->this$1:Lsafiap/framework/data/SharedDataManager$1;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager$1;->access$0(Lsafiap/framework/data/SharedDataManager$1;)Lsafiap/framework/data/SharedDataManager;

    move-result-object v1

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager;->access$4(Lsafiap/framework/data/SharedDataManager;)Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$1$1;->this$1:Lsafiap/framework/data/SharedDataManager$1;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager$1;->access$0(Lsafiap/framework/data/SharedDataManager$1;)Lsafiap/framework/data/SharedDataManager;

    move-result-object v1

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager;->access$4(Lsafiap/framework/data/SharedDataManager;)Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    move-result-object v1

    const-string v2, "suc"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;->onGotSharedData(Ljava/lang/String;[B)I

    .line 278
    .end local v0    # "messageBody":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got message from invalid apk: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsafiap/framework/data/SharedDataManager$1$1;->val$message2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
