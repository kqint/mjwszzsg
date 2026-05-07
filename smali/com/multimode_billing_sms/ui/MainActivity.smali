.class public Lcom/multimode_billing_sms/ui/MainActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;
    }
.end annotation


# instance fields
.field private _$1:Landroid/content/IntentFilter;

.field private _$2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/multimode_billing_sms/ui/MainActivity;->setContentView(I)V

    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/multimode_billing_sms/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MainActivity;->_$2:Landroid/widget/Button;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.infinit.multimodebilling.checkerror"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MainActivity;->_$1:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MainActivity;->_$1:Landroid/content/IntentFilter;

    const-string v1, "com.infinit.multimodebilling.paycancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MainActivity;->_$1:Landroid/content/IntentFilter;

    const-string v1, "com.infinit.multimodebilling.upbrances"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MainActivity;->_$2:Landroid/widget/Button;

    new-instance v1, Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;

    invoke-direct {v1, p0}, Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;-><init>(Lcom/multimode_billing_sms/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
