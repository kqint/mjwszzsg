.class Lsafiap/framework/ui/res/LayoutDialogStyleA$1;
.super Ljava/lang/Object;
.source "LayoutDialogStyleA.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/ui/res/LayoutDialogStyleA;->setMessage()V
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
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-static {v0, p2}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->access$0(Lsafiap/framework/ui/res/LayoutDialogStyleA;Z)V

    .line 181
    const-string v0, "LayoutDialogStyleA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sCheckValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA$1;->this$0:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-static {v2}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->access$1(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
