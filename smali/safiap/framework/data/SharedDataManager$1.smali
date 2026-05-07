.class Lsafiap/framework/data/SharedDataManager$1;
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
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$1;->this$0:Lsafiap/framework/data/SharedDataManager;

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/data/SharedDataManager$1;)Lsafiap/framework/data/SharedDataManager;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager$1;->this$0:Lsafiap/framework/data/SharedDataManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handle message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 230
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "message2":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 234
    .local v3, "port":I
    iget-object v4, p0, Lsafiap/framework/data/SharedDataManager$1;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-static {v4, v1}, Lsafiap/framework/data/SharedDataManager;->access$1(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "header":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getHeader: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    .line 241
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v0    # "header":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 243
    .local v2, "pid":I
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 245
    if-lez v2, :cond_0

    .line 264
    iget-object v4, p0, Lsafiap/framework/data/SharedDataManager$1;->this$0:Lsafiap/framework/data/SharedDataManager;

    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager$1;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-static {v5}, Lsafiap/framework/data/SharedDataManager;->access$2(Lsafiap/framework/data/SharedDataManager;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lsafiap/framework/data/SharedDataManager$1$1;

    invoke-direct {v6, p0, v1}, Lsafiap/framework/data/SharedDataManager$1$1;-><init>(Lsafiap/framework/data/SharedDataManager$1;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3, v5, v6}, Lsafiap/framework/data/SharedDataManager;->checkPeerValidation(IILandroid/content/Context;Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;)V

    goto :goto_0

    .line 242
    .end local v2    # "pid":I
    .restart local v0    # "header":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 230
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method
