.class public Lcn/cmgame/billing/b/c;
.super Lcn/cmgame/sdk/c/a;
.source "ConfigExtend.java"


# instance fields
.field private aT:Ljava/lang/String;

.field private aU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcn/cmgame/billing/b/c$1;

    const-class v1, Lcn/cmgame/billing/b/c;

    const-string v2, "configextend"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/c$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "specialchannel"

    new-instance v3, Lcn/cmgame/billing/b/c$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/c$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cmccphonefilter"

    new-instance v3, Lcn/cmgame/billing/b/c$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/c$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcn/cmgame/billing/b/c;->aT:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/cmgame/billing/b/c;->aU:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public aJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/cmgame/billing/b/c;->aT:Ljava/lang/String;

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/cmgame/billing/b/c;->aU:Ljava/lang/String;

    return-object v0
.end method
