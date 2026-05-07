.class Lsafiap/framework/data/SharedDataManager$PeerCheckListener;
.super Ljava/lang/Object;
.source "SharedDataManager.java"

# interfaces
.implements Lsafiap/framework/UpdateManager$OnGotUpdateListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/data/SharedDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerCheckListener"
.end annotation


# instance fields
.field private mPeerPkgName:Ljava/lang/String;

.field private mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

.field final synthetic this$0:Lsafiap/framework/data/SharedDataManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;)V
    .locals 1
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "listener"    # Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    .prologue
    const/4 v0, 0x0

    .line 513
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object v0, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerPkgName:Ljava/lang/String;

    .line 511
    iput-object v0, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    .line 514
    iput-object p2, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerPkgName:Ljava/lang/String;

    .line 515
    iput-object p3, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    .line 516
    return-void
.end method


# virtual methods
.method public onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
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
    .local p2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    const/16 v5, 0x7d0

    .line 527
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "onGotUpdateList...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 528
    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_AUTH_APK:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    .line 530
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 531
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    invoke-interface {v1, v5}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/data/PluginInfo;

    .line 532
    .local v0, "remoteInfo":Lsafiap/framework/data/PluginInfo;
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remoteInfo.pkgname: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerPkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->this$0:Lsafiap/framework/data/SharedDataManager;

    invoke-static {v1}, Lsafiap/framework/data/SharedDataManager;->access$2(Lsafiap/framework/data/SharedDataManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lsafiap/framework/sdk/util/PackageUtil;->isSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    const/16 v2, 0x7d1

    invoke-interface {v1, v2}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    goto :goto_0

    .line 550
    .end local v0    # "remoteInfo":Lsafiap/framework/data/PluginInfo;
    :cond_3
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    if-eqz v1, :cond_4

    .line 551
    iget-object v1, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    invoke-interface {v1, v5}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    .line 553
    :cond_4
    invoke-static {}, Lsafiap/framework/data/SharedDataManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "peer check rsp is null "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGotUpdateListError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;->mPeerValidationListener:Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    .line 523
    :cond_0
    return-void
.end method
