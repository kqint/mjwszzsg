.class Lcn/cmgame/billing/ui/c$2;
.super Ljava/lang/Object;
.source "GameDetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/c;->b(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dU:Lcn/cmgame/billing/ui/c;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/c$2;->dU:Lcn/cmgame/billing/ui/c;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$2;->dU:Lcn/cmgame/billing/ui/c;

    invoke-static {v0}, Lcn/cmgame/billing/ui/c;->c(Lcn/cmgame/billing/ui/c;)V

    .line 142
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$2;->dU:Lcn/cmgame/billing/ui/c;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/c;->dismiss()V

    .line 143
    return-void
.end method
