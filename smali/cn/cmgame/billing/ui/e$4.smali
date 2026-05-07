.class Lcn/cmgame/billing/ui/e$4;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$4;->fc:Lcn/cmgame/billing/ui/e;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$4;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    const-string v1, "http://g.10086.cn/a/?dotype=ad3wj"

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    return-void
.end method
