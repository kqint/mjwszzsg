.class Lsafiap/framework/ui/UpdateHintActivity$5;
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

.field private final synthetic val$frmVersion:I

.field private final synthetic val$iapVersion:I


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    iput p2, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$componentType:I

    iput p3, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$frmVersion:I

    iput p4, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$iapVersion:I

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 3

    .prologue
    .line 458
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canceled ... , isChecked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v2}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v2

    invoke-virtual {v2}, Lsafiap/framework/ui/res/SafDialog;->isCheckValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->isCheckValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$componentType:I

    or-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    iget v2, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$frmVersion:I

    invoke-static {v0, v1, v2}, Lsafiap/framework/data/LocalRecord;->ignoreUpdate(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 463
    :cond_0
    iget v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$componentType:I

    or-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    iget v2, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->val$iapVersion:I

    invoke-static {v0, v1, v2}, Lsafiap/framework/data/LocalRecord;->ignoreUpdate(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 467
    :cond_1
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 468
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$5;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 469
    return-void
.end method
