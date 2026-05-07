.class Lcn/cmgame/billing/ui/b$10;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$10;->dh:Lcn/cmgame/billing/ui/b;

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 1983
    if-eqz p2, :cond_0

    .line 1984
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1985
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/b;->o(Ljava/lang/String;)V

    .line 1992
    :goto_0
    return-void

    .line 1987
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1988
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/b;->o(Ljava/lang/String;)V

    .line 1989
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/b;->S()V

    goto :goto_0
.end method
