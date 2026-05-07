.class Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

.field private final _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    iput-object p2, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;->_$2(Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "btn_an.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "btn_an.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :pswitch_0
    return v3

    :pswitch_1
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    :try_start_1
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;->_$2(Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "btn_an_click.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "btn_an_click.png"

    invoke-static {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;->_$1(Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;)Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog$PSmsOneSureListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog$PSmsOneSureListener;->OneSure(I)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIIllIllllIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
