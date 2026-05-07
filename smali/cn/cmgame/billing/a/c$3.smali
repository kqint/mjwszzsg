.class Lcn/cmgame/billing/a/c$3;
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


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/c;Lcn/cmgame/billing/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/a/c$3;->av:Lcn/cmgame/billing/a/c;

    iput-object p2, p0, Lcn/cmgame/billing/a/c$3;->aw:Lcn/cmgame/billing/a/a;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/cmgame/billing/a/c$3;->aw:Lcn/cmgame/billing/a/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/a/a;->an()V

    .line 133
    return-void
.end method
