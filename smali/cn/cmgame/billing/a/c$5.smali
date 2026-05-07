.class Lcn/cmgame/billing/a/c$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/a/c;->a(Lcn/cmgame/billing/a/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic av:Lcn/cmgame/billing/a/c;

.field private final synthetic aw:Lcn/cmgame/billing/a/a;

.field private final synthetic ax:Ljava/lang/Runnable;

.field private final synthetic ay:Ljava/lang/Runnable;

.field private final synthetic az:J


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/c;Ljava/lang/Runnable;JLcn/cmgame/billing/a/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/a/c$5;->av:Lcn/cmgame/billing/a/c;

    iput-object p2, p0, Lcn/cmgame/billing/a/c$5;->ay:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcn/cmgame/billing/a/c$5;->az:J

    iput-object p5, p0, Lcn/cmgame/billing/a/c$5;->aw:Lcn/cmgame/billing/a/a;

    iput-object p6, p0, Lcn/cmgame/billing/a/c$5;->ax:Ljava/lang/Runnable;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcn/cmgame/billing/a/c$5;->av:Lcn/cmgame/billing/a/c;

    invoke-static {v0}, Lcn/cmgame/billing/a/c;->b(Lcn/cmgame/billing/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/a/c$5;->ay:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcn/cmgame/billing/a/c$5;->az:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    iget-object v0, p0, Lcn/cmgame/billing/a/c$5;->aw:Lcn/cmgame/billing/a/a;

    iget-object v1, p0, Lcn/cmgame/billing/a/c$5;->av:Lcn/cmgame/billing/a/c;

    invoke-static {v1}, Lcn/cmgame/billing/a/c;->c(Lcn/cmgame/billing/a/c;)Lcn/cmgame/billing/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/j;)V

    .line 149
    iget-object v0, p0, Lcn/cmgame/billing/a/c$5;->aw:Lcn/cmgame/billing/a/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/a/a;->am()V

    .line 150
    iget-object v0, p0, Lcn/cmgame/billing/a/c$5;->av:Lcn/cmgame/billing/a/c;

    invoke-static {v0}, Lcn/cmgame/billing/a/c;->b(Lcn/cmgame/billing/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/a/c$5;->ay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lcn/cmgame/billing/a/c$5;->av:Lcn/cmgame/billing/a/c;

    invoke-static {v0}, Lcn/cmgame/billing/a/c;->b(Lcn/cmgame/billing/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/a/c$5;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method
