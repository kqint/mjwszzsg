.class Lsafiap/framework/SafFrameworkManager$2;
.super Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field flag:Z

.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$2;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 1126
    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;-><init>()V

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager$2;->flag:Z

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "current"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1165
    return-void
.end method

.method public onFinishDownload(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1149
    const/16 v0, 0x7532

    .line 1150
    .local v0, "type":I
    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    .line 1152
    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    .line 1153
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$2;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lsafiap/framework/SafFrameworkManager;->setDisconnectNotification(Landroid/content/Context;I)V

    .line 1155
    :cond_0
    return-void
.end method

.method public onFinishInstall(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1144
    return-void
.end method

.method public onInstallTimeout(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1139
    return-void
.end method

.method public onPrepareDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1135
    return-void
.end method

.method public onStartInstall(Ljava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1130
    const-wide/16 v0, 0x0

    return-wide v0
.end method
