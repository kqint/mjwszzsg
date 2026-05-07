.class Lcn/cmgame/billing/b/a$2;
.super Lcn/cmgame/billing/a/g;
.source "Charge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/a;->t(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aM:Lcn/cmgame/billing/b/a;

.field private final synthetic aN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/b/a;Lcn/cmgame/billing/a/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/b/a$2;->aM:Lcn/cmgame/billing/b/a;

    iput-object p3, p0, Lcn/cmgame/billing/b/a$2;->aN:Ljava/lang/String;

    .line 203
    invoke-direct {p0, p2}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 221
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/cmgame/billing/c/a;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/cmgame/billing/b/a$2;->aM:Lcn/cmgame/billing/b/a;

    iget-object v1, p0, Lcn/cmgame/billing/b/a$2;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcn/cmgame/billing/c/a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/a;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "http://gmc.g188.net/egsb/SMSCharging/sendChargingCode"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    const-string v0, "GameBilling"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    return-void
.end method
