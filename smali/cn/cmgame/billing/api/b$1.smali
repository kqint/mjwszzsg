.class Lcn/cmgame/billing/api/b$1;
.super Ljava/lang/Object;
.source "GameLogin.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/b;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcn/cmgame/billing/api/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/api/b;I)V

    .line 104
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->b(Lcn/cmgame/billing/api/b;)V

    .line 105
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->c(Lcn/cmgame/billing/api/b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/api/b;I)V

    .line 110
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->c(Lcn/cmgame/billing/api/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->d(Lcn/cmgame/billing/api/b;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/api/b$1;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->e(Lcn/cmgame/billing/api/b;)V

    goto :goto_0
.end method
