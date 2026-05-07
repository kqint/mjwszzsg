.class Lsafiap/framework/sdk/SAFFramework$4;
.super Ljava/lang/Object;
.source "SAFFramework.java"

# interfaces
.implements Lsafiap/framework/UpdateManager$OnGotUpdateListListener;


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
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$7(Lsafiap/framework/sdk/SAFFramework;)V

    .line 774
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 776
    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_AUTH_FRAMEWORK:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    .line 777
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 778
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 789
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "no need to delete  "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$11(Lsafiap/framework/sdk/SAFFramework;)V

    .line 804
    :cond_1
    :goto_1
    return-void

    .line 778
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/data/PluginInfo;

    .line 779
    .local v0, "remoteInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v2}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getDigest()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lsafiap/framework/sdk/util/PackageUtil;->isSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v2}, Lsafiap/framework/sdk/SAFFramework;->access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 793
    .end local v0    # "remoteInfo":Lsafiap/framework/data/PluginInfo;
    :cond_3
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$12(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->notifyDataSetChanged()V

    .line 794
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v1}, Lsafiap/framework/sdk/SAFFramework;->access$13(Lsafiap/framework/sdk/SAFFramework;)V

    .line 795
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "need to delete invalid app "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 800
    :cond_4
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "auth framework rsp is null "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onGotUpdateListError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 808
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$4;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v0}, Lsafiap/framework/sdk/SAFFramework;->access$7(Lsafiap/framework/sdk/SAFFramework;)V

    .line 810
    return-void
.end method
