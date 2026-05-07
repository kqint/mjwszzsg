.class Lsafiap/framework/ui/res/LayoutDialogStyleB$1;
.super Ljava/lang/Object;
.source "LayoutDialogStyleB.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/res/LayoutDialogStyleB;->setBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/ui/res/LayoutDialogStyleB;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/res/LayoutDialogStyleB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->access$0(Lsafiap/framework/ui/res/LayoutDialogStyleB;)Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->access$0(Lsafiap/framework/ui/res/LayoutDialogStyleB;)Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;->onClicked()V

    .line 153
    :cond_0
    return-void
.end method
