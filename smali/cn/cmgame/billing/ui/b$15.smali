.class Lcn/cmgame/billing/ui/b$15;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$15;->dh:Lcn/cmgame/billing/ui/b;

    .line 2103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$15;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "http://www.baidu.com"

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2107
    return-void
.end method
