.class Lcn/cmgame/billing/ui/e$6;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e;->a(ILjava/lang/String;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcn/cmgame/billing/ui/e;

.field private final synthetic fe:I


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    iput p2, p0, Lcn/cmgame/billing/ui/e$6;->fe:I

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 394
    iget v0, p0, Lcn/cmgame/billing/ui/e$6;->fe:I

    packed-switch v0, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v1, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/cmgame/billing/ui/e;->b(Lcn/cmgame/billing/ui/e;Landroid/widget/Button;Z)V

    .line 398
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v1

    .line 399
    const-string v2, "500230544000"

    const-string v3, "40288000"

    const-string v4, ""

    new-instance v5, Lcn/cmgame/billing/ui/e$6$1;

    invoke-direct {v5, p0, p1}, Lcn/cmgame/billing/ui/e$6$1;-><init>(Lcn/cmgame/billing/ui/e$6;Landroid/view/View;)V

    .line 398
    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->co()V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
