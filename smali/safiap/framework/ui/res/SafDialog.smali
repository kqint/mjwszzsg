.class public Lsafiap/framework/ui/res/SafDialog;
.super Landroid/app/Dialog;
.source "SafDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;,
        Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;,
        Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;
    }
.end annotation


# static fields
.field private static final STYLEADIALOG:I = 0x1

.field private static final STYLEBDIALOG:I = 0x2


# instance fields
.field private DialogAconfig:[I

.field private DialogBconfig:[I

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mOnKeyUpListener:Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

.field private mOnStyleACancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

.field private mOnStyleAConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

.field private mOnStyleBCancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

.field private mOnStyleBConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

.field private mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

.field private mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II[I[I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "theme"    # I
    .param p3, "ID"    # I
    .param p4, "cfgA"    # [I
    .param p5, "cfgB"    # [I

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleAConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .line 12
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleACancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .line 13
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBCancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .line 14
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .line 17
    const-string v0, "SafDialog"

    iput-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->TAG:Ljava/lang/String;

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->DialogAconfig:[I

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->DialogBconfig:[I

    .line 21
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object v1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnKeyUpListener:Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsafiap/framework/ui/res/SafDialog;->setCancelable(Z)V

    .line 26
    invoke-virtual {p0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mActivity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p0, p3, p4, p5}, Lsafiap/framework/ui/res/SafDialog;->resetParameters(I[I[I)V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleACancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleAConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    return-object v0
.end method

.method static synthetic access$2(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBCancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/ui/res/SafDialog;)Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    return-object v0
.end method


# virtual methods
.method public getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    return-object v0
.end method

.method public getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    return-object v0
.end method

.method public isCheckValue()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->isCheckValue()Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnKeyUpListener:Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lsafiap/framework/ui/res/SafDialog;->mOnKeyUpListener:Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

    invoke-interface {v0, p1, p2}, Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public resetParameters(I[I[I)V
    .locals 6
    .param p1, "ID"    # I
    .param p2, "cfgA"    # [I
    .param p3, "cfgB"    # [I

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 88
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p3

    if-lt v1, v2, :cond_1

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_2
    return-void

    .line 86
    .end local v1    # "j":I
    :cond_0
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->DialogAconfig:[I

    aget v3, p2, v0

    aput v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .restart local v1    # "j":I
    :cond_1
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->DialogBconfig:[I

    aget v3, p3, v1

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :pswitch_0
    const-string v2, "SafDialog"

    const-string v3, "DIALOG A is create..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v2, Lsafiap/framework/ui/res/LayoutDialogStyleA;

    iget-object v3, p0, Lsafiap/framework/ui/res/SafDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lsafiap/framework/ui/res/SafDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lsafiap/framework/ui/res/SafDialog;->DialogAconfig:[I

    invoke-direct {v2, v3, v4, v5}, Lsafiap/framework/ui/res/LayoutDialogStyleA;-><init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V

    iput-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    .line 96
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/SafDialog;->setContentView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    new-instance v3, Lsafiap/framework/ui/res/SafDialog$1;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/SafDialog$1;-><init>(Lsafiap/framework/ui/res/SafDialog;)V

    invoke-virtual {v2, v3}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setOnDialogStyleACancelListener(Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;)V

    .line 106
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleADialog:Lsafiap/framework/ui/res/LayoutDialogStyleA;

    new-instance v3, Lsafiap/framework/ui/res/SafDialog$2;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/SafDialog$2;-><init>(Lsafiap/framework/ui/res/SafDialog;)V

    invoke-virtual {v2, v3}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setOnDialogStyleAConfirmListener(Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;)V

    goto :goto_2

    .line 119
    :pswitch_1
    const-string v2, "SafDialog"

    const-string v3, "DIALOG B is create..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v2, Lsafiap/framework/ui/res/LayoutDialogStyleB;

    iget-object v3, p0, Lsafiap/framework/ui/res/SafDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lsafiap/framework/ui/res/SafDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lsafiap/framework/ui/res/SafDialog;->DialogBconfig:[I

    invoke-direct {v2, v3, v4, v5}, Lsafiap/framework/ui/res/LayoutDialogStyleB;-><init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V

    iput-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    .line 121
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/SafDialog;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    new-instance v3, Lsafiap/framework/ui/res/SafDialog$3;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/SafDialog$3;-><init>(Lsafiap/framework/ui/res/SafDialog;)V

    invoke-virtual {v2, v3}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setOnDialogStyleBCancelListener(Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;)V

    .line 133
    iget-object v2, p0, Lsafiap/framework/ui/res/SafDialog;->mStyleBDialog:Lsafiap/framework/ui/res/LayoutDialogStyleB;

    new-instance v3, Lsafiap/framework/ui/res/SafDialog$4;

    invoke-direct {v3, p0}, Lsafiap/framework/ui/res/SafDialog$4;-><init>(Lsafiap/framework/ui/res/SafDialog;)V

    invoke-virtual {v2, v3}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setOnDialogStyleBConfirmListener(Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;)V

    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnKeyUpListener(Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

    .prologue
    .line 55
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnKeyUpListener:Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;

    .line 56
    return-void
.end method

.method public setOnStyleAConcelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .prologue
    .line 66
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleACancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .line 67
    return-void
.end method

.method public setOnStyleAConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .prologue
    .line 63
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleAConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;

    .line 64
    return-void
.end method

.method public setOnStyleBCancelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .prologue
    .line 77
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBCancelListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .line 78
    return-void
.end method

.method public setOnStyleBConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .prologue
    .line 74
    iput-object p1, p0, Lsafiap/framework/ui/res/SafDialog;->mOnStyleBConfirmListener:Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;

    .line 75
    return-void
.end method
