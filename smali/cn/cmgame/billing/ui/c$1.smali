.class Lcn/cmgame/billing/ui/c$1;
.super Ljava/lang/Object;
.source "GameDetailDialog.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/c;->c(Lcn/cmgame/billing/b/e;)V
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/c$1;->dU:Lcn/cmgame/billing/ui/c;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 118
    check-cast p1, Landroid/graphics/Bitmap;

    .line 119
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$1;->dU:Lcn/cmgame/billing/ui/c;

    invoke-static {v0}, Lcn/cmgame/billing/ui/c;->a(Lcn/cmgame/billing/ui/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$1;->dU:Lcn/cmgame/billing/ui/c;

    invoke-static {v0}, Lcn/cmgame/billing/ui/c;->b(Lcn/cmgame/billing/ui/c;)Lcn/cmgame/billing/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/util/b;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
