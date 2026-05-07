.class public abstract Lcn/cmgame/sdk/a/a;
.super Lcn/cmgame/sdk/a/b;
.source "ArrayAttribute.java"


# instance fields
.field private hc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/cmgame/sdk/a/b;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/cmgame/sdk/a/a;->hc:Ljava/lang/Class;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract c(Lcn/cmgame/sdk/c/a;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation
.end method

.method public dd()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcn/cmgame/sdk/a/a;->hc:Ljava/lang/Class;

    return-object v0
.end method
