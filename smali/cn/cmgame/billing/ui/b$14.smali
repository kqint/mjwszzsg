.class Lcn/cmgame/billing/ui/b$14;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/b/g;)Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$14;->dh:Lcn/cmgame/billing/ui/b;

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$14;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 2100
    return-void
.end method
