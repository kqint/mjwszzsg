.class Lsafiap/framework/SafFrameworkManager$7;
.super Landroid/os/Handler;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/SafFrameworkManager;->checkUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$7;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 1916
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1919
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1920
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle message: msg.what: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1921
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1930
    :goto_0
    return-void

    .line 1923
    :pswitch_0
    new-instance v0, Lsafiap/framework/UpdateManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$7;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v0, v1}, Lsafiap/framework/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 1924
    .local v0, "manager":Lsafiap/framework/UpdateManager;
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$7;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$23(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager;->startQueryUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    goto :goto_0

    .line 1921
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method
