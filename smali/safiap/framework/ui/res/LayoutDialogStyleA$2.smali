.class Lsafiap/framework/ui/res/LayoutDialogStyleA$2;
.super Ljava/lang/Object;
.source "LayoutDialogStyleA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/res/LayoutDialogStyleA;->setBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;


# direct methods
.method constructor <init>(Lsafiap/framework/ui/res/LayoutDialogStyleA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$2;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$2;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->access$2(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$2;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-static {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->access$2(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;->onClicked()V

    .line 247
    :cond_0
    return-void
.end method
