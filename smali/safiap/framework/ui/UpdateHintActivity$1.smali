.class Lsafiap/framework/ui/UpdateHintActivity$1;
.super Ljava/lang/Object;
.source "UpdateHintActivity.java"

# interfaces
.implements Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/UpdateHintActivity;->createIsdownloadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/ui/UpdateHintActivity;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/UpdateHintActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/UpdateHintActivity$1;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lsafiap/framework/ui/UpdateHintActivity;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "confirmed ... "

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$1;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-static {v0}, Lsafiap/framework/ui/UpdateHintActivity;->access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 369
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity$1;->this$0:Lsafiap/framework/ui/UpdateHintActivity;

    invoke-virtual {v0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 370
    return-void
.end method
