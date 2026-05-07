.class Lsafiap/framework/data/SharedDataManager$3;
.super Ljava/lang/Object;
.source "SharedDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/data/SharedDataManager;->getSharedData(Ljava/lang/String;ILsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/data/SharedDataManager;

.field private final synthetic val$port:I

.field private final synthetic val$server:Lsafiap/framework/data/ShareDataServerSocket;


# direct methods
.method constructor <init>(Lsafiap/framework/data/SharedDataManager;ILsafiap/framework/data/ShareDataServerSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$3;->this$0:Lsafiap/framework/data/SharedDataManager;

    iput p2, p0, Lsafiap/framework/data/SharedDataManager$3;->val$port:I

    iput-object p3, p0, Lsafiap/framework/data/SharedDataManager$3;->val$server:Lsafiap/framework/data/ShareDataServerSocket;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lsafiap/framework/data/SharedDataManager$3;->val$port:I

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager$3;->val$server:Lsafiap/framework/data/ShareDataServerSocket;

    invoke-virtual {v0}, Lsafiap/framework/data/ShareDataServerSocket;->beginListen()V

    .line 86
    :cond_0
    return-void
.end method
