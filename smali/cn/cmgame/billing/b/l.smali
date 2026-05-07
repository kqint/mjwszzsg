.class public Lcn/cmgame/billing/b/l;
.super Lcn/cmgame/sdk/c/a;
.source "UserToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/l$a;
    }
.end annotation


# instance fields
.field private bR:Ljava/lang/String;

.field private bS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method public static a(Lcn/cmgame/billing/b/l$a;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 41
    const-string v1, "Random-Code"

    sget-object v2, Lcn/cmgame/billing/util/Const;->gk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "Encrypt-IMSI"

    sget-object v2, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcn/cmgame/billing/b/l$1;

    invoke-direct {v1, v0, p0}, Lcn/cmgame/billing/b/l$1;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/l$a;)V

    .line 82
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 83
    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcn/cmgame/billing/b/l$2;

    const-class v1, Lcn/cmgame/billing/b/l;

    const-string v2, "usertoken"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/l$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "token"

    new-instance v3, Lcn/cmgame/billing/b/l$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/l$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object v0
.end method


# virtual methods
.method public an(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcn/cmgame/billing/b/l;->bR:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public ao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcn/cmgame/billing/b/l;->bS:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public bv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/cmgame/billing/b/l;->bR:Ljava/lang/String;

    return-object v0
.end method

.method public bw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/cmgame/billing/b/l;->bS:Ljava/lang/String;

    return-object v0
.end method
