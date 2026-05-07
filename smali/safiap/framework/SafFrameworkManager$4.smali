.class Lsafiap/framework/SafFrameworkManager$4;
.super Ljava/lang/Object;
.source "SafFrameworkManager.java"

# interfaces
.implements Lsafiap/framework/UpdateManager$OnGotUpdateListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
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
    .line 1956
    .local p2, "remoteInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    const-string v5, "onGotUpdateList...start"

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1958
    sget v2, Lsafiap/framework/util/UpdateAlarm;->MIN_UPDATE_FREQUENCY:I

    .line 1960
    .local v2, "minFreq":I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1961
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->getAllPluginInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 1962
    .local v1, "localInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsafiap/framework/data/PluginInfo;>;"
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, p2}, Lsafiap/framework/UpdateManager;->pickPluginUpdateItems(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 1964
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1973
    .end local v1    # "localInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsafiap/framework/data/PluginInfo;>;"
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "safiap.framework.ACTION_SET_TIMER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v0, "intent":Landroid/content/Intent;
    sget-object v4, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v5}, Lsafiap/framework/SafFrameworkManager;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    sget-object v4, Lsafiap/framework/CheckUpdateReceiver;->KEY_UPDATE_ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1976
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v4, v0}, Lsafiap/framework/SafFrameworkManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 1977
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lsafiap/framework/SafFrameworkManager;->access$10(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 1978
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v4}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 1979
    return-void

    .line 1964
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "localInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsafiap/framework/data/PluginInfo;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsafiap/framework/data/PluginInfo;

    .line 1965
    .local v3, "remoteInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v3}, Lsafiap/framework/data/PluginInfo;->getPolicy()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Timer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lsafiap/framework/data/PluginInfo;->getPolicyVal()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Lsafiap/framework/data/PluginInfo;->getPolicyVal()I

    move-result v5

    if-ge v5, v2, :cond_0

    .line 1966
    invoke-virtual {v3}, Lsafiap/framework/data/PluginInfo;->getPolicyVal()I

    move-result v2

    .line 1967
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "change timer frequence:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGotUpdateListError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1984
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsafiap/framework/SafFrameworkManager;->access$10(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 1985
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$4;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 1986
    return-void
.end method
