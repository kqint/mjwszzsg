.class public abstract Lcn/cmgame/sdk/c/b;
.super Ljava/lang/Object;
.source "ResourceClass.java"


# instance fields
.field public ir:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private is:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/cmgame/sdk/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/cmgame/sdk/c/b;->ir:Ljava/lang/Class;

    .line 36
    iput-object p2, p0, Lcn/cmgame/sdk/c/b;->resourceName:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    .line 40
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/c/b;->b(Ljava/lang/Class;)V

    .line 41
    return-void
.end method

.method private b(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    const-class v0, Lcn/cmgame/sdk/c/a;

    if-eq p1, v0, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcn/cmgame/sdk/c/b;->b(Ljava/lang/Class;)V

    .line 25
    invoke-static {v0}, Lcn/cmgame/sdk/c/a;->a(Ljava/lang/Class;)Lcn/cmgame/sdk/c/b;

    move-result-object v2

    .line 26
    iget-object v0, v2, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    iget-object v1, v2, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/cmgame/sdk/a/b;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public abstract aD()Lcn/cmgame/sdk/c/a;
.end method

.method public aO(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/cmgame/sdk/c/b;->resourceName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/cmgame/sdk/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public dl()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/cmgame/sdk/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcn/cmgame/sdk/c/b;->is:Ljava/util/HashMap;

    return-object v0
.end method

.method public dm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/cmgame/sdk/c/b;->resourceName:Ljava/lang/String;

    return-object v0
.end method
