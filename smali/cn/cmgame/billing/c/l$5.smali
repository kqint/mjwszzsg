.class Lcn/cmgame/billing/c/l$5;
.super Lcn/cmgame/billing/a/g;
.source "UpdateVersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ck:Lcn/cmgame/billing/c/l$b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/l$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/c/l$5;->ck:Lcn/cmgame/billing/c/l$b;

    .line 111
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/cmgame/billing/c/l$5;->ck:Lcn/cmgame/billing/c/l$b;

    if-eqz v0, :cond_0

    .line 131
    check-cast p1, Lcn/cmgame/billing/c/l;

    .line 132
    iget-object v0, p0, Lcn/cmgame/billing/c/l$5;->ck:Lcn/cmgame/billing/c/l$b;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/c/l$b;->d(Lcn/cmgame/billing/c/l;)V

    .line 134
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "http://gmc.g188.net/egsb/verification/checkVersion"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/cmgame/billing/c/l$5;->ck:Lcn/cmgame/billing/c/l$b;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/cmgame/billing/c/l$5;->ck:Lcn/cmgame/billing/c/l$b;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/c/l$b;->m(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
