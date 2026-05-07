.class Lsafiap/framework/ui/UpdateHintActivity$7;
.super Ljava/lang/Object;
.source "UpdateHintActivity.java"

# interfaces
.implements Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/UpdateHintActivity;->createInstallDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/ui/UpdateHintActivity;

.field private final synthetic val$componentType:I


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    iput p2, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->val$componentType:I

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 503
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "confirmed ... "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 504
    iget v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->val$componentType:I

    if-ne v1, v4, :cond_1

    .line 506
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$2(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    .line 508
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->access$2(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v1, v2, v4}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 510
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAFFramework UI SAFFrameworkFilepath :  ...."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework UI SAFFrameworkFilepath file exits...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->requestInstallation(Landroid/content/Context;Ljava/io/File;)V

    .line 518
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 519
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v1}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 563
    :goto_0
    return-void

    .line 521
    :cond_1
    iget v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->val$componentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 523
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$3(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->access$3(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 526
    .restart local v0    # "file":Ljava/io/File;
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IAPFilepath .... url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework UI file exits ...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->requestInstallation(Landroid/content/Context;Ljava/io/File;)V

    .line 534
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 535
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v1}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$2(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 539
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    .line 540
    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->access$2(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v1, v2, v4}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 542
    .restart local v0    # "file":Ljava/io/File;
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAFFramework UI SAFFrameworkFilepath :  ...."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 545
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework UI SAFFrameworkFilepath file exits...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->requestInstallation(Landroid/content/Context;Ljava/io/File;)V

    .line 550
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$3(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->access$3(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 553
    .restart local v0    # "file":Ljava/io/File;
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAFFramework UI .... url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework UI file exits ...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->requestInstallation(Landroid/content/Context;Ljava/io/File;)V

    .line 560
    .end local v0    # "file":Ljava/io/File;
    :cond_5
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v1}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 561
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity$7;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v1}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_0
.end method
