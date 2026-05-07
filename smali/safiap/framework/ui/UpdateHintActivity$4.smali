.class Lsafiap/framework/ui/UpdateHintActivity$4;
.super Ljava/lang/Object;
.source "UpdateHintActivity.java"

# interfaces
.implements Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/UpdateHintActivity;->createUpdateDialog(III)V
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
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    iput p2, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->val$componentType:I

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->val$componentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->downloadApkV2(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 434
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 450
    :goto_0
    return-void

    .line 436
    :cond_0
    iget v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->val$componentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->downloadApkV2(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 440
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->downloadApkV2(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->downloadApkV2(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 447
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$4;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto :goto_0
.end method
