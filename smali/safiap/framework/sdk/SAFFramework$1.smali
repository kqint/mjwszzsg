.class Lsafiap/framework/sdk/SAFFramework$1;
.super Ljava/lang/Object;
.source "SAFFramework.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 172
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$0(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {p2}, Lsafiap/framework/sdk/ISAFFramework$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v2

    invoke-static {v0, v2}, Lsafiap/framework/sdk/SAFFramework;->access$1(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$2(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$2(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    .line 199
    :cond_0
    return-void

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$0(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsafiap/framework/sdk/SAFFramework;->access$1(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$2(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$2(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onExit()V

    .line 208
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$1;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0, v3}, Lsafiap/framework/sdk/SAFFramework;->access$3(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;)V

    .line 210
    :cond_0
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
