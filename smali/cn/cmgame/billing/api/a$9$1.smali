.class Lcn/cmgame/billing/api/a$9$1;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a$9;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Lcn/cmgame/billing/api/a$9;

.field private final synthetic I:Lcn/cmgame/billing/b/e;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/a$9;Lcn/cmgame/billing/b/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$9$1;->H:Lcn/cmgame/billing/api/a$9;

    iput-object p2, p0, Lcn/cmgame/billing/api/a$9$1;->I:Lcn/cmgame/billing/b/e;

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1449
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1450
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->x()Lcn/cmgame/billing/util/a;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/api/a$9$1;->I:Lcn/cmgame/billing/b/e;

    invoke-virtual {v1}, Lcn/cmgame/billing/b/e;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/cmgame/billing/util/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1451
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method
