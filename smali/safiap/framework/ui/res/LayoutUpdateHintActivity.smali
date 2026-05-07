.class public Lsafiap/framework/ui/res/LayoutUpdateHintActivity;
.super Landroid/widget/RelativeLayout;
.source "LayoutUpdateHintActivity.java"


# instance fields
.field private mWinManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "manager"    # Landroid/view/WindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v1, 0x0

    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->mWinManager:Landroid/view/WindowManager;

    .line 15
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->mWinManager:Landroid/view/WindowManager;

    .line 16
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;->setBackgroundColor(I)V

    .line 23
    return-void
.end method
