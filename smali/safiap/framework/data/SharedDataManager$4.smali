.class Lsafiap/framework/data/SharedDataManager$4;
.super Ljava/lang/Object;
.source "SharedDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/data/SharedDataManager;->sendSharedData(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/data/SharedDataManager;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$port:I


# direct methods
.method constructor <init>(Lsafiap/framework/data/SharedDataManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$4;->this$0:Lsafiap/framework/data/SharedDataManager;

    iput p2, p0, Lsafiap/framework/data/SharedDataManager$4;->val$port:I

    iput-object p3, p0, Lsafiap/framework/data/SharedDataManager$4;->val$message:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 119
    new-instance v3, Lsafiap/framework/data/ShareDataClientSocket;

    const-string v6, "127.0.0.1"

    .line 120
    iget v7, p0, Lsafiap/framework/data/SharedDataManager$4;->val$port:I

    .line 119
    invoke-direct {v3, v6, v7}, Lsafiap/framework/data/ShareDataClientSocket;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v3, "socket":Lsafiap/framework/data/ShareDataClientSocket;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    .local v2, "pid":Ljava/lang/Integer;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lsafiap/framework/data/SharedDataManager$4;->val$message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "strPid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v5, v6, 0x10

    .line 130
    .local v5, "zeroLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v6, p0, Lsafiap/framework/data/SharedDataManager$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "construct message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lsafiap/framework/data/ShareDataClientSocket;->sendMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-virtual {v3}, Lsafiap/framework/data/ShareDataClientSocket;->closeSocket()V

    .line 141
    return-void

    .line 131
    :cond_0
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
