.class Lsafiap/framework/sdk/SAFFramework$3;
.super Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;
.source "SAFFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/SAFFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/sdk/SAFFramework;


# direct methods
.method constructor <init>(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 244
    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "current"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lsafiap/framework/sdk/PluginInstallListener;->onDownloadProgress(Ljava/lang/String;II)V

    .line 289
    :cond_0
    return-void
.end method

.method public onFinishDownload(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lsafiap/framework/sdk/PluginInstallListener;->onFinishDownload(Ljava/lang/String;I)V

    .line 281
    :cond_0
    return-void
.end method

.method public onFinishInstall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lsafiap/framework/sdk/PluginInstallListener;->onFinishInstall(Ljava/lang/String;I)V

    .line 273
    :cond_0
    return-void
.end method

.method public onInstallTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsafiap/framework/sdk/PluginInstallListener;->onInstallTimeout(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onPrepareDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsafiap/framework/sdk/PluginInstallListener;->onPrepareDownload(Ljava/lang/String;)V

    .line 258
    :cond_0
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
    .line 247
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$3;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsafiap/framework/sdk/PluginInstallListener;->onStartInstall(Ljava/lang/String;)J

    move-result-wide v0

    .line 250
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
