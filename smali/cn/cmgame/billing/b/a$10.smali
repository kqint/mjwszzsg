.class Lcn/cmgame/billing/b/a$10;
.super Lcn/cmgame/billing/a/g;
.source "Charge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aO:Ljava/lang/String;

.field private final synthetic aP:Lcn/cmgame/billing/b/a$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/a$10;->aO:Ljava/lang/String;

    iput-object p3, p0, Lcn/cmgame/billing/b/a$10;->aP:Lcn/cmgame/billing/b/a$a;

    .line 156
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcn/cmgame/billing/b/a$10;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcn/cmgame/billing/b/a$10;->aP:Lcn/cmgame/billing/b/a$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/cmgame/billing/b/a$10;->aP:Lcn/cmgame/billing/b/a$a;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/a$a;->aE()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_ok"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/cmgame/billing/b/a$10;->aP:Lcn/cmgame/billing/b/a$a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcn/cmgame/billing/b/a$10;->aP:Lcn/cmgame/billing/b/a$a;

    const-string v1, "gc_billing_fail"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/a$a;->m(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_fail"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
