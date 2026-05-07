.class public Lcn/cmgame/sdk/e/i$b;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/sdk/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic kK:Lcn/cmgame/sdk/e/i;


# direct methods
.method public constructor <init>(Lcn/cmgame/sdk/e/i;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/cmgame/sdk/e/i$b;->kK:Lcn/cmgame/sdk/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$b;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->b(Lcn/cmgame/sdk/e/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 117
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$b;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lcn/cmgame/sdk/e/i$b;->kK:Lcn/cmgame/sdk/e/i;

    invoke-static {v0}, Lcn/cmgame/sdk/e/i;->a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
