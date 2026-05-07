.class Lcn/cmgame/billing/ui/b$22;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cm()Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;

.field private final synthetic ds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$22;->dh:Lcn/cmgame/billing/ui/b;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$22;->ds:Ljava/util/List;

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b$22;)Lcn/cmgame/billing/ui/b;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22;->dh:Lcn/cmgame/billing/ui/b;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1195
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22;->ds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22;->ds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22;->ds:Ljava/util/List;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->l(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b$22;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v2, v2, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "gc_billing_net_contacts"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1198
    const/4 v2, 0x0

    new-instance v3, Lcn/cmgame/billing/ui/b$22$1;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b$22;->ds:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcn/cmgame/billing/ui/b$22$1;-><init>(Lcn/cmgame/billing/ui/b$22;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_net_contacts_error"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
