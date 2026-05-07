.class Lcn/cmgame/billing/ui/e$5;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcn/cmgame/billing/ui/e;

.field private final synthetic fd:Z


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    iput-boolean p2, p0, Lcn/cmgame/billing/ui/e$5;->fd:Z

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 302
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/e$5;->fd:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v2, v3, v4}, Lcn/cmgame/billing/ui/e;->a(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$5;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v2, v3, v4}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    goto :goto_0
.end method
