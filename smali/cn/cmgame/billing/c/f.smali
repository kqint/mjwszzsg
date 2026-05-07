.class public Lcn/cmgame/billing/c/f;
.super Lcn/cmgame/sdk/d/b;
.source "MessageResponse.java"


# instance fields
.field private cb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcn/cmgame/billing/c/f$1;

    const-class v1, Lcn/cmgame/billing/c/f;

    const-string v2, "messageresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/f$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "pushmessages"

    new-instance v3, Lcn/cmgame/billing/c/f$2;

    const-class v4, Lcn/cmgame/billing/b/g;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/f$2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method


# virtual methods
.method public bD()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcn/cmgame/billing/c/f;->cb:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcn/cmgame/billing/c/f;->cb:Ljava/util/List;

    .line 44
    return-void
.end method
