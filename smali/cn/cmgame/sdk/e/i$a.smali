.class public Lcn/cmgame/sdk/e/i$a;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/sdk/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic kK:Lcn/cmgame/sdk/e/i;


# direct methods
.method public constructor <init>(Lcn/cmgame/sdk/e/i;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->save()V

    .line 68
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->b(Lcn/cmgame/sdk/e/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 69
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v1}, Lcn/cmgame/sdk/e/i;->a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$a;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
