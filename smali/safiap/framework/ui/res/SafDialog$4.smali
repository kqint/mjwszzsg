.class Lsafiap/framework/ui/res/SafDialog$4;
.super Ljava/lang/Object;
.source "SafDialog.java"

# interfaces
.implements Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/res/SafDialog;->resetParameters(I[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/ui/res/SafDialog;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/res/SafDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog$4;->this$0:Lsafiap/framework/ui/res/SafDialog;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog$4;->this$0:Lsafiap/framework/ui/res/SafDialog;

    invoke-static {v0}, Lsafiap/framework/ui/res/SafDialog;->access$3(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog$4;->this$0:Lsafiap/framework/ui/res/SafDialog;

    invoke-static {v0}, Lsafiap/framework/ui/res/SafDialog;->access$3(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;->onClicked()V

    .line 141
    :cond_0
    return-void
.end method
