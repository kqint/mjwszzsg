.class Lsafiap/framework/data/SharedDataManager$2;
.super Landroid/os/Handler;
.source "SharedDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/data/SharedDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/data/SharedDataManager;


# direct methods
.method constructor <init>(Lsafiap/framework/data/SharedDataManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$2;->this$0:Lsafiap/framework/data/SharedDataManager;

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 292
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mTimerHandler.handle message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 297
    .local v0, "dataID":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsafiap/framework/data/SharedDataManager$2$1;

    invoke-direct {v2, p0, v0}, Lsafiap/framework/data/SharedDataManager$2$1;-><init>(Lsafiap/framework/data/SharedDataManager$2;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 307
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$2;->this$0:Lsafiap/framework/data/SharedDataManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsafiap/framework/data/SharedDataManager;->access$5(Lsafiap/framework/data/SharedDataManager;Z)V

    .line 309
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$2;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager;->access$4(Lsafiap/framework/data/SharedDataManager;)Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$2;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager;->access$4(Lsafiap/framework/data/SharedDataManager;)Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    move-result-object v1

    invoke-interface {v1}, Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;->onGotSharedDataTimeOut()I

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x4e20
        :pswitch_0
    .end packed-switch
.end method
