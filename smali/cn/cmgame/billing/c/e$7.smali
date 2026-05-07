.class Lcn/cmgame/billing/c/e$7;
.super Lcn/cmgame/billing/a/g;
.source "LowestDiscountResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ca:Lcn/cmgame/billing/c/e$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/e$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/c/e$7;->ca:Lcn/cmgame/billing/c/e$a;

    .line 111
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "POST"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/cmgame/billing/c/e$7;->ca:Lcn/cmgame/billing/c/e$a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/cmgame/billing/c/e$7;->ca:Lcn/cmgame/billing/c/e$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/c/e$a;->a(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "http://gmc.g188.net/egsb/discount/getLowestDiscountInfo"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/cmgame/billing/c/e$7;->ca:Lcn/cmgame/billing/c/e$a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/cmgame/billing/c/e$7;->ca:Lcn/cmgame/billing/c/e$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/c/e$a;->m(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method
