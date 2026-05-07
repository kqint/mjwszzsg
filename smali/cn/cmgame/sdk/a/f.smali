.class public abstract Lcn/cmgame/sdk/a/f;
.super Lcn/cmgame/sdk/a/l;
.source "EnumAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcn/cmgame/sdk/a/l;"
    }
.end annotation


# instance fields
.field he:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/a/l;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/cmgame/sdk/a/f;->he:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract a(Lcn/cmgame/sdk/c/a;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            "TT;)V"
        }
    .end annotation
.end method

.method public b(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p2}, Lcn/cmgame/sdk/a/f;->i(Lcn/cmgame/sdk/c/a;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/cmgame/sdk/a/f;->a(Lcn/cmgame/sdk/c/a;Ljava/lang/Enum;)V

    .line 19
    return-void
.end method

.method public abstract i(Lcn/cmgame/sdk/c/a;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            ")TT;"
        }
    .end annotation
.end method
