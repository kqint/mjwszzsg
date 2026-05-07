.class public Lsafiap/framework/ui/UpdateHintActivity;
.super Landroid/app/Activity;
.source "UpdateHintActivity.java"


# static fields
.field private static logger:Lsafiap/framework/util/MyLogger;

.field private static sCheckValue:Z


# instance fields
.field private final BOTH:I

.field private DialogAconfig:[I

.field private final DialogAconfigLandscape:[I

.field private final DialogAconfigProtrait:[I

.field private DialogBconfig:[I

.field private final DialogBconfigLandscape:[I

.field private final DialogBconfigProtrait:[I

.field private final DialogStyleA:I

.field private final DialogStyleB:I

.field private final FRAMEWORK:I

.field private final IAP:I

.field private TAG:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDownloadFilesize:I

.field private mIAPfileName:Ljava/lang/String;

.field private mIsMandatoryUpdate:Z

.field private mLayoutUpdateHintActivity:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

.field private mSAFframeworkfileName:Ljava/lang/String;

.field private mSafDialog:Lsafiap/framework/ui/res/SafDialog;

.field private mUpdateHint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "UpdateHintActivity"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lsafiap/framework/ui/UpdateHintActivity;->sCheckValue:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSAFframeworkfileName:Ljava/lang/String;

    .line 42
    const-string v0, "[SAF_FRAMEWORK_IAP]"

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->TAG:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 47
    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogStyleB:I

    .line 49
    iput v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogStyleA:I

    .line 51
    iput v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->FRAMEWORK:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->IAP:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->BOTH:I

    .line 54
    iput v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    .line 56
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigProtrait:[I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigLandscape:[I

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigProtrait:[I

    .line 59
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigLandscape:[I

    .line 61
    new-array v0, v4, [I

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    .line 62
    new-array v0, v3, [I

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    .line 63
    iput-boolean v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->mUpdateHint:Z

    .line 64
    iput-boolean v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->mIsMandatoryUpdate:Z

    .line 37
    return-void

    .line 56
    :array_0
    .array-data 4
        0x12
        0xaa
        0x12
        0x41
        0xf0
        0x16
        0x14
        0x16
        0xc
        0xa
        0x3c
        0x46
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x64
        0x23
        0x64
        0x2d
        0x78
        0x12
        0x5
        0x12
        0x5
        0xd
        0x28
        0x28
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x12
        0xaa
        0x12
        0x41
        0x16
        0x78
        0x16
        0x1b
        0x16
        0x11
        0x46
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x64
        0x23
        0x64
        0x2d
        0x14
        0x3c
        0x14
        0xa
        0x14
        0xa
        0x2d
    .end array-data
.end method

.method static synthetic access$0()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/ui/UpdateHintActivity;)Lsafiap/framework/ui/res/SafDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    return-object v0
.end method

.method static synthetic access$2(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSAFframeworkfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/ui/UpdateHintActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    return-object v0
.end method

.method private createDownloadErrorDialog(I)V
    .locals 6
    .param p1, "componentType"    # I

    .prologue
    .line 595
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "createDownloadErrorDialog()..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lsafiap/framework/ui/res/SafDialog;

    const v2, 0x1030010

    const/4 v3, 0x2

    iget-object v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    iget-object v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/ui/res/SafDialog;-><init>(Landroid/app/Activity;II[I[I)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    .line 597
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiMessage()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$10;

    invoke-direct {v1, p0, p1}, Lsafiap/framework/ui/UpdateHintActivity$10;-><init>(Lsafiap/framework/ui/UpdateHintActivity;I)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 626
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$11;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$11;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBCancelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 637
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$12;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$12;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnKeyUpListener(Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;)V

    .line 650
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->show()V

    .line 651
    return-void
.end method

.method private createInstallDialog(I)V
    .locals 6
    .param p1, "componentType"    # I

    .prologue
    .line 492
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "createInstallDialog()..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 493
    new-instance v0, Lsafiap/framework/ui/res/SafDialog;

    const v2, 0x1030010

    const/4 v3, 0x2

    iget-object v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    iget-object v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/ui/res/SafDialog;-><init>(Landroid/app/Activity;II[I[I)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    .line 494
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiMessage()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$7;

    invoke-direct {v1, p0, p1}, Lsafiap/framework/ui/UpdateHintActivity$7;-><init>(Lsafiap/framework/ui/UpdateHintActivity;I)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 566
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$8;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$8;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBCancelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 577
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$9;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$9;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnKeyUpListener(Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;)V

    .line 590
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->show()V

    .line 591
    return-void
.end method

.method private createIsdownloadingDialog()V
    .locals 6

    .prologue
    .line 348
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "createIsdownloadingDialog()..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 349
    new-instance v0, Lsafiap/framework/ui/res/SafDialog;

    const v2, 0x1030010

    const/4 v3, 0x2

    iget-object v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    iget-object v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/ui/res/SafDialog;-><init>(Landroid/app/Activity;II[I[I)V

    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    .line 350
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmTextViewUiMessage()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u540e\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleBDialog()Lsafiap/framework/ui/res/LayoutDialogStyleB;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getmConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$1;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$1;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 373
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$2;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$2;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleBCancelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleBButtonListener;)V

    .line 384
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$3;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$3;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnKeyUpListener(Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;)V

    .line 398
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->show()V

    .line 399
    return-void
.end method

.method private createUpdateDialog(III)V
    .locals 8
    .param p1, "componentType"    # I
    .param p2, "frmVersion"    # I
    .param p3, "iapVersion"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 403
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createUpdateDialog()...componentType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frmVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iapVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    iget-object v2, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    invoke-virtual {v0, v3, v1, v2}, Lsafiap/framework/ui/res/SafDialog;->resetParameters(I[I[I)V

    .line 488
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Lsafiap/framework/ui/res/SafDialog;

    .line 409
    const v2, 0x1030010

    iget-object v4, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    iget-object v5, p0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/ui/res/SafDialog;-><init>(Landroid/app/Activity;II[I[I)V

    .line 408
    iput-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    .line 410
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmTextViewUiTitle()Landroid/widget/TextView;

    move-result-object v0

    .line 411
    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmTextViewUiMessage()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u6709\u65b0\u7248\u672c\uff08\u5927\u5c0f\uff1a%sKB\uff09\u53ef\u4f9b\u5347\u7ea7\u3002"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mUpdateHint:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7701\u6d41\u91cf\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_1
    iget-boolean v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mIsMandatoryUpdate:Z

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmTextViewMandatoryUpdateNote()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :goto_2
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$4;

    invoke-direct {v1, p0, p1}, Lsafiap/framework/ui/UpdateHintActivity$4;-><init>(Lsafiap/framework/ui/UpdateHintActivity;I)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleAConfirmListener(Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;)V

    .line 453
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lsafiap/framework/ui/UpdateHintActivity$5;-><init>(Lsafiap/framework/ui/UpdateHintActivity;III)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnStyleAConcelListener(Lsafiap/framework/ui/res/SafDialog$OnStyleAButtonListener;)V

    .line 472
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    new-instance v1, Lsafiap/framework/ui/UpdateHintActivity$6;

    invoke-direct {v1, p0}, Lsafiap/framework/ui/UpdateHintActivity$6;-><init>(Lsafiap/framework/ui/UpdateHintActivity;)V

    invoke-virtual {v0, v1}, Lsafiap/framework/ui/res/SafDialog;->setOnKeyUpListener(Lsafiap/framework/ui/res/SafDialog$OnKeyUpListener;)V

    .line 486
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->show()V

    goto/16 :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 422
    :cond_2
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmTextViewMandatoryUpdateNote()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->getStyleADialog()Lsafiap/framework/ui/res/LayoutDialogStyleA;

    move-result-object v0

    invoke-virtual {v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getmCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupDialog(Landroid/content/res/Configuration;)V
    .locals 18
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    move-object/from16 v0, p1

    iget v15, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->TAG:Ljava/lang/String;

    const-string v16, "change to landscape"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigLandscape:[I

    array-length v15, v15

    if-lt v6, v15, :cond_6

    .line 73
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigLandscape:[I

    array-length v15, v15

    if-lt v11, v15, :cond_7

    .line 88
    .end local v6    # "i":I
    .end local v11    # "j":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 89
    .local v14, "updateHintIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "IntentAction":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 92
    const-string v15, "appUpdateType"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "appUpdateType":Ljava/lang/String;
    const-string v15, "iapIsDownloading"

    const/16 v16, 0x0

    .line 93
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 96
    .local v10, "isiapDownloading":Z
    const-string v15, "fwIsDownloading"

    const/16 v16, 0x0

    .line 95
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 98
    .local v9, "isfwDownloading":Z
    const-string v15, "fwApkSize"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "frameworkApkSizewithKB":Ljava/lang/String;
    const-string v15, "iapApkSize"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "iapApkSizewithKB":Ljava/lang/String;
    const-string v15, "iapApkVersion"

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 102
    .local v8, "iapVersion":I
    const-string v15, "fwApkVersion"

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 103
    .local v5, "frameworkVersion":I
    const-string v15, "isMandatoryUpdate"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIsMandatoryUpdate:Z

    .line 106
    if-eqz v4, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    .line 108
    :cond_1
    if-eqz v7, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 114
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    .line 117
    :cond_3
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "mDownloadFilesize is:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->mDownloadFilesize:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 120
    const-string v15, "patch"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 121
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mUpdateHint:Z

    .line 123
    :cond_4
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "UpdateHintActivity.isMandatoryUpdate is:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIsMandatoryUpdate:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mUpdateHint"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->mUpdateHint:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 127
    const-string v15, "UpdateType"

    const/16 v16, -0x1

    .line 126
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 128
    .local v13, "type":I
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "download UI ...., type:  "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 129
    const/16 v15, 0x7531

    if-ne v15, v13, :cond_b

    .line 132
    if-eqz v9, :cond_a

    .line 133
    :try_start_0
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "framework has update...:is downloading..."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 134
    invoke-direct/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->createIsdownloadingDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v2    # "appUpdateType":Ljava/lang/String;
    .end local v4    # "frameworkApkSizewithKB":Ljava/lang/String;
    .end local v5    # "frameworkVersion":I
    .end local v7    # "iapApkSizewithKB":Ljava/lang/String;
    .end local v8    # "iapVersion":I
    .end local v9    # "isfwDownloading":Z
    .end local v10    # "isiapDownloading":Z
    .end local v13    # "type":I
    :cond_5
    :goto_2
    return-void

    .line 71
    .end local v1    # "IntentAction":Ljava/lang/String;
    .end local v14    # "updateHintIntent":Landroid/content/Intent;
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigLandscape:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    aput v16, v15, v6

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 74
    .restart local v11    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigLandscape:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v15, v11

    .line 73
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 78
    .end local v6    # "i":I
    .end local v11    # "j":I
    :cond_8
    move-object/from16 v0, p1

    iget v15, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->TAG:Ljava/lang/String;

    const-string v16, "change to portrait"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigProtrait:[I

    array-length v15, v15

    if-lt v6, v15, :cond_9

    .line 83
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigProtrait:[I

    array-length v15, v15

    if-ge v11, v15, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfig:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogBconfigProtrait:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v15, v11

    .line 83
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 81
    .end local v11    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfig:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->DialogAconfigProtrait:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    aput v16, v15, v6

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 136
    .end local v6    # "i":I
    .restart local v1    # "IntentAction":Ljava/lang/String;
    .restart local v2    # "appUpdateType":Ljava/lang/String;
    .restart local v4    # "frameworkApkSizewithKB":Ljava/lang/String;
    .restart local v5    # "frameworkVersion":I
    .restart local v7    # "iapApkSizewithKB":Ljava/lang/String;
    .restart local v8    # "iapVersion":I
    .restart local v9    # "isfwDownloading":Z
    .restart local v10    # "isiapDownloading":Z
    .restart local v13    # "type":I
    .restart local v14    # "updateHintIntent":Landroid/content/Intent;
    :cond_a
    :try_start_1
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "framework has update...:just update!"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 137
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v8}, Lsafiap/framework/ui/UpdateHintActivity;->createUpdateDialog(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 139
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const/16 v15, 0x7533

    if-ne v15, v13, :cond_e

    .line 147
    if-nez v10, :cond_c

    if-eqz v9, :cond_d

    .line 148
    :cond_c
    :try_start_2
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "framework or IAP has update...:is downloading..."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->createIsdownloadingDialog()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 154
    :catch_1
    move-exception v3

    .line 156
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 151
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_3
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "framework or IAP has update...:just update!"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 152
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v8}, Lsafiap/framework/ui/UpdateHintActivity;->createUpdateDialog(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 159
    :cond_e
    const/16 v15, 0x7532

    if-ne v15, v13, :cond_10

    .line 160
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "iap has update ..."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 163
    if-eqz v10, :cond_f

    .line 164
    :try_start_4
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "iap has update ...: is downloading...."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 165
    invoke-direct/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->createIsdownloadingDialog()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 171
    :catch_2
    move-exception v3

    .line 173
    .restart local v3    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->TAG:Ljava/lang/String;

    .line 174
    const-string v16, "SAF-A Exception:520010"

    .line 173
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f
    :try_start_5
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "iap has update ...: just update!"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 169
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v8}, Lsafiap/framework/ui/UpdateHintActivity;->createUpdateDialog(III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 179
    :cond_10
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "Nothing to Do Should exit ..."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_2

    .line 183
    .end local v2    # "appUpdateType":Ljava/lang/String;
    .end local v4    # "frameworkApkSizewithKB":Ljava/lang/String;
    .end local v5    # "frameworkVersion":I
    .end local v7    # "iapApkSizewithKB":Ljava/lang/String;
    .end local v8    # "iapVersion":I
    .end local v9    # "isfwDownloading":Z
    .end local v10    # "isiapDownloading":Z
    .end local v13    # "type":I
    :cond_11
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "install UI .... "

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 184
    sget-object v15, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 187
    const-string v15, "packageName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "packageName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 191
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_2

    .line 196
    :cond_12
    sget-object v15, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 199
    const-string v15, "fwFileName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 198
    move-object/from16 v0, p0

    iput-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mSAFframeworkfileName:Ljava/lang/String;

    .line 200
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createInstallDialog(I)V

    goto/16 :goto_2

    .line 202
    :cond_13
    sget-object v15, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 205
    const-string v15, "iapFileName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 204
    move-object/from16 v0, p0

    iput-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    .line 206
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createInstallDialog(I)V

    goto/16 :goto_2

    .line 208
    :cond_14
    sget-object v15, Lsafiap/framework/util/Constants;->FLAG_TO_INSTALL_BOTH:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 210
    const-string v15, "iapFileName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 209
    move-object/from16 v0, p0

    iput-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    .line 212
    const-string v15, "fwFileName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 211
    move-object/from16 v0, p0

    iput-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mSAFframeworkfileName:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    if-eqz v15, :cond_15

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mSAFframeworkfileName:Ljava/lang/String;

    if-nez v15, :cond_16

    .line 215
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 217
    :cond_16
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createInstallDialog(I)V

    goto/16 :goto_2

    .line 221
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_17
    sget-object v15, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 222
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "install UI in IAP.... "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v17, "iapFileName"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 223
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 225
    const-string v17, " ====  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 227
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 226
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 222
    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 229
    const-string v15, "iapFileName"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 228
    move-object/from16 v0, p0

    iput-object v15, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    .line 230
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "IAPFilepath in UpdateUI: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/ui/UpdateHintActivity;->mIAPfileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 231
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createInstallDialog(I)V

    goto/16 :goto_2

    .line 233
    :cond_18
    sget-object v15, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR_FRAMEWORK:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 234
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "network error UI framework downloading is not completed"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 235
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createDownloadErrorDialog(I)V

    goto/16 :goto_2

    .line 237
    :cond_19
    sget-object v15, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR_IAP:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 238
    sget-object v15, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v16, "network error UI iap downloading is not completed"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 239
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsafiap/framework/ui/UpdateHintActivity;->createDownloadErrorDialog(I)V

    goto/16 :goto_2

    .line 241
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    goto/16 :goto_2
.end method


# virtual methods
.method public downloadApkV2(Ljava/lang/String;)V
    .locals 3
    .param p1, "apkServiceAction"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "safiap.framework.ACTION_START_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "pluginname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    invoke-direct {p0, p1}, Lsafiap/framework/ui/UpdateHintActivity;->setupDialog(Landroid/content/res/Configuration;)V

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    sget-object v1, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateHintActivity onCreate() is called!, Context: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 257
    new-instance v1, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    .line 258
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lsafiap/framework/ui/res/LayoutUpdateHintActivity;-><init>(Landroid/view/WindowManager;Landroid/content/Context;)V

    .line 257
    iput-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mLayoutUpdateHintActivity:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    .line 259
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->mLayoutUpdateHintActivity:Lsafiap/framework/ui/res/LayoutUpdateHintActivity;

    invoke-virtual {p0, v1}, Lsafiap/framework/ui/UpdateHintActivity;->setContentView(Landroid/view/View;)V

    .line 261
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 262
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Lsafiap/framework/ui/UpdateHintActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, v0}, Lsafiap/framework/ui/UpdateHintActivity;->setupDialog(Landroid/content/res/Configuration;)V

    .line 265
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 292
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 270
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown ....keyCode:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 274
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "No exit ..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "onPause...start.."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "dismiss the dialog"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lsafiap/framework/ui/UpdateHintActivity;->mSafDialog:Lsafiap/framework/ui/res/SafDialog;

    invoke-virtual {v0}, Lsafiap/framework/ui/res/SafDialog;->dismiss()V

    .line 334
    :cond_0
    sget-object v0, Lsafiap/framework/ui/UpdateHintActivity;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "finish the activity"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lsafiap/framework/ui/UpdateHintActivity;->finish()V

    .line 336
    return-void
.end method
