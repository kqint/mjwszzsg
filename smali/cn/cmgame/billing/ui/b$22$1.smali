.class Lcn/cmgame/billing/ui/b$22$1;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ds:Ljava/util/List;

.field final synthetic dt:Lcn/cmgame/billing/ui/b$22;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b$22;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$22$1;->dt:Lcn/cmgame/billing/ui/b$22;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$22$1;->ds:Ljava/util/List;

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1201
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$22$1;->ds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    iget-object v1, p0, Lcn/cmgame/billing/ui/b$22$1;->dt:Lcn/cmgame/billing/ui/b$22;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b$22;->a(Lcn/cmgame/billing/ui/b$22;)Lcn/cmgame/billing/ui/b;

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->n(Lcn/cmgame/billing/ui/b;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1204
    return-void
.end method
