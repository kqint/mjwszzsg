.class Lcn/cmgame/billing/c/k$1;
.super Lcn/cmgame/sdk/c/b;
.source "SubscribeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/k;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcn/cmgame/sdk/c/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public aD()Lcn/cmgame/sdk/c/a;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcn/cmgame/billing/c/k;

    invoke-direct {v0}, Lcn/cmgame/billing/c/k;-><init>()V

    return-object v0
.end method
