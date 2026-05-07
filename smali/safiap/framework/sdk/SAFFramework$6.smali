.class Lsafiap/framework/sdk/SAFFramework$6;
.super Ljava/lang/Object;
.source "SAFFramework.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/sdk/SAFFramework;->showDeleteDialog()V
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
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$6;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 848
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework$6;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v3}, Lsafiap/framework/sdk/SAFFramework;->access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework$6;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v3}, Lsafiap/framework/sdk/SAFFramework;->access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 857
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 859
    return-void

    .line 850
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/data/PluginInfo;

    .line 851
    .local v0, "info":Lsafiap/framework/data/PluginInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 852
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 853
    .local v2, "uninstallIntent":Landroid/content/Intent;
    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework$6;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v4}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
