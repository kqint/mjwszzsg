.class Lcn/cmgame/billing/ui/a$5;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/a;->a(Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcn/cmgame/billing/ui/a;

.field private final synthetic cF:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/a;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/a$5;->cE:Lcn/cmgame/billing/ui/a;

    iput-object p2, p0, Lcn/cmgame/billing/ui/a$5;->cF:Landroid/view/View$OnClickListener;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcn/cmgame/billing/ui/a$5;->cF:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/cmgame/billing/ui/a$5;->cF:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/a$5;->cE:Lcn/cmgame/billing/ui/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    goto :goto_0
.end method
