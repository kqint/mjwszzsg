.class public abstract Lcn/cmgame/sdk/a/k;
.super Lcn/cmgame/sdk/a/b;
.source "NestedAttribute.java"


# instance fields
.field private type:Ljava/lang/Class;
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
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/b;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/cmgame/sdk/a/k;->type:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
.end method

.method public abstract e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;
.end method

.method public getType()Ljava/lang/Class;
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
    .line 17
    iget-object v0, p0, Lcn/cmgame/sdk/a/k;->type:Ljava/lang/Class;

    return-object v0
.end method
