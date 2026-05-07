.class Lcn/cmgame/billing/api/b$6$1;
.super Ljava/lang/Object;
.source "GameLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/b$6;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic V:Lcn/cmgame/billing/api/b$6;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/b$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/b$6$1;->V:Lcn/cmgame/billing/api/b$6;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6$1;->V:Lcn/cmgame/billing/api/b$6;

    invoke-static {v0}, Lcn/cmgame/billing/api/b$6;->a(Lcn/cmgame/billing/api/b$6;)Lcn/cmgame/billing/api/b;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->h(Lcn/cmgame/billing/api/b;)V

    .line 423
    return-void
.end method
