.class Lcn/cmgame/billing/ui/a$2;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/a;->bP()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcn/cmgame/billing/ui/a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/a$2;->cE:Lcn/cmgame/billing/ui/a;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcn/cmgame/billing/ui/a$2;->cE:Lcn/cmgame/billing/ui/a;

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->c(Landroid/content/Context;)V

    .line 202
    return-void
.end method
