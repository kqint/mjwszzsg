.class Lcn/cmgame/billing/ui/TabView$3;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/TabView;->b([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fr:Lcn/cmgame/billing/ui/TabView;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/TabView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/TabView$3;->fr:Lcn/cmgame/billing/ui/TabView;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView$3;->fr:Lcn/cmgame/billing/ui/TabView;

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/TabView;->a(Lcn/cmgame/billing/ui/TabView;I)V

    .line 139
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView$3;->fr:Lcn/cmgame/billing/ui/TabView;

    invoke-static {v0}, Lcn/cmgame/billing/ui/TabView;->a(Lcn/cmgame/billing/ui/TabView;)[Landroid/view/View$OnClickListener;

    move-result-object v0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 140
    return-void
.end method
