.class public Lcn/cmgame/billing/util/f;
.super Ljava/lang/Object;
.source "UserRO.java"


# instance fields
.field private gY:Ljava/lang/String;

.field private gZ:Ljava/lang/String;

.field private ha:Ljava/lang/String;

.field private hb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aD(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcn/cmgame/billing/util/f;->gY:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public aE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/cmgame/billing/util/f;->gZ:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public aF(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/cmgame/billing/util/f;->ha:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public aG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/cmgame/billing/util/f;->hb:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public cZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/cmgame/billing/util/f;->gY:Ljava/lang/String;

    return-object v0
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/cmgame/billing/util/f;->gZ:Ljava/lang/String;

    return-object v0
.end method

.method public db()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/cmgame/billing/util/f;->ha:Ljava/lang/String;

    return-object v0
.end method

.method public dc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/cmgame/billing/util/f;->hb:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/cmgame/billing/util/f;->gY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcn/cmgame/billing/util/f;->hb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/util/f;->gZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcn/cmgame/billing/util/f;->ha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
