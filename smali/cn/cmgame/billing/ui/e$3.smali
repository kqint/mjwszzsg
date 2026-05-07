.class Lcn/cmgame/billing/ui/e$3;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e;->cR()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcn/cmgame/billing/ui/e;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$3;->fc:Lcn/cmgame/billing/ui/e;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$3;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$3;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Landroid/widget/Button;Z)V

    .line 234
    return-void
.end method
