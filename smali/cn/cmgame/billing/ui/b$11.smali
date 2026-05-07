.class Lcn/cmgame/billing/ui/b$11;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cv()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;

.field private final synthetic dn:Landroid/widget/EditText;

.field private final synthetic do:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$11;->dh:Lcn/cmgame/billing/ui/b;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$11;->dn:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/cmgame/billing/ui/b$11;->do:Landroid/widget/EditText;

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11;->dh:Lcn/cmgame/billing/ui/b;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2015
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11;->dn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2016
    iget-object v1, p0, Lcn/cmgame/billing/ui/b$11;->do:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2017
    iget-object v2, p0, Lcn/cmgame/billing/ui/b$11;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v2, v2, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/cmgame/billing/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2018
    iget-object v2, p0, Lcn/cmgame/billing/ui/b$11;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b$11;->dh:Lcn/cmgame/billing/ui/b;

    const-string v4, "gc_package_loginning"

    invoke-static {v4}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/cmgame/billing/ui/b;->ax(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/cmgame/billing/ui/b;->c(Landroid/view/View;)V

    .line 2019
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v2

    new-instance v3, Lcn/cmgame/billing/ui/b$11$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/b$11$1;-><init>(Lcn/cmgame/billing/ui/b$11;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/cmgame/billing/api/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    .line 2039
    :cond_0
    return-void
.end method
