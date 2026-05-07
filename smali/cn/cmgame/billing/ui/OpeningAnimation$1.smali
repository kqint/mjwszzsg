.class Lcn/cmgame/billing/ui/OpeningAnimation$1;
.super Ljava/lang/Object;
.source "OpeningAnimation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/OpeningAnimation;->a(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eV:Lcn/cmgame/billing/ui/OpeningAnimation;

.field private final synthetic eW:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/OpeningAnimation;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation$1;->eV:Lcn/cmgame/billing/ui/OpeningAnimation;

    iput-object p2, p0, Lcn/cmgame/billing/ui/OpeningAnimation$1;->eW:Landroid/app/Activity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation$1;->eW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method
