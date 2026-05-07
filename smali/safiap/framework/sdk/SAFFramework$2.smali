.class Lsafiap/framework/sdk/SAFFramework$2;
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
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$2;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 217
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {p2}, Lsafiap/framework/sdk/ISAFFramework$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;

    move-result-object v1

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->access$4(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V

    .line 218
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->this$0:Lsafiap/framework/sdk/SAFFramework;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->access$5(Lsafiap/framework/sdk/SAFFramework;Z)V

    .line 219
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 223
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$2;->this$0:Lsafiap/framework/sdk/SAFFramework;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsafiap/framework/sdk/SAFFramework;->access$4(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V

    .line 224
    return-void
.end method
