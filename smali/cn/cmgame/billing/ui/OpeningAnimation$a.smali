.class Lcn/cmgame/billing/ui/OpeningAnimation$a;
.super Landroid/os/Handler;
.source "OpeningAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/ui/OpeningAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic eV:Lcn/cmgame/billing/ui/OpeningAnimation;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/OpeningAnimation;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcn/cmgame/billing/ui/OpeningAnimation$a;->eV:Lcn/cmgame/billing/ui/OpeningAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 538
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->removeMessages(I)V

    .line 539
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 540
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcn/cmgame/billing/ui/OpeningAnimation$a;->eV:Lcn/cmgame/billing/ui/OpeningAnimation;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->cM()V

    .line 530
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->removeMessages(I)V

    .line 534
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/cmgame/billing/ui/OpeningAnimation$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 535
    return-void
.end method
