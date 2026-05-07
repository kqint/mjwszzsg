.class Lcn/cmgame/billing/a/c$4;
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


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/c;Lcn/cmgame/billing/a/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/a/c$4;->av:Lcn/cmgame/billing/a/c;

    iput-object p2, p0, Lcn/cmgame/billing/a/c$4;->aw:Lcn/cmgame/billing/a/a;

    iput-object p3, p0, Lcn/cmgame/billing/a/c$4;->ax:Ljava/lang/Runnable;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcn/cmgame/billing/a/c$4;->aw:Lcn/cmgame/billing/a/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/a/a;->ap()V

    .line 139
    iget-object v0, p0, Lcn/cmgame/billing/a/c$4;->av:Lcn/cmgame/billing/a/c;

    invoke-static {v0}, Lcn/cmgame/billing/a/c;->b(Lcn/cmgame/billing/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/a/c$4;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method
