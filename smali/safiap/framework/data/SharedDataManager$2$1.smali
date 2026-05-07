.class Lsafiap/framework/data/SharedDataManager$2$1;
.super Ljava/lang/Object;
.source "SharedDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/data/SharedDataManager$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsafiap/framework/data/SharedDataManager$2;

.field private final synthetic val$dataID:I


# direct methods
.method constructor <init>(Lsafiap/framework/data/SharedDataManager$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$2$1;->this$1:Lsafiap/framework/data/SharedDataManager$2;

    iput p2, p0, Lsafiap/framework/data/SharedDataManager$2$1;->val$dataID:I

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Lsafiap/framework/data/ShareDataClientSocket;

    .line 302
    const-string v1, "127.0.0.1"

    iget v2, p0, Lsafiap/framework/data/SharedDataManager$2$1;->val$dataID:I

    .line 301
    invoke-direct {v0, v1, v2}, Lsafiap/framework/data/ShareDataClientSocket;-><init>(Ljava/lang/String;I)V

    .line 303
    .local v0, "socket":Lsafiap/framework/data/ShareDataClientSocket;
    const-string v1, "end"

    invoke-virtual {v0, v1}, Lsafiap/framework/data/ShareDataClientSocket;->sendMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    invoke-virtual {v0}, Lsafiap/framework/data/ShareDataClientSocket;->closeSocket()V

    .line 305
    return-void
.end method
