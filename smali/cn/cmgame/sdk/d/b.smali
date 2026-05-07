.class public Lcn/cmgame/sdk/d/b;
.super Lcn/cmgame/sdk/c/a;
.source "Response.java"


# instance fields
.field private iv:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/b;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcn/cmgame/sdk/d/b;->status:I

    return v0
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/b;I)V
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcn/cmgame/sdk/d/b;->status:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/sdk/d/b;->iv:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcn/cmgame/sdk/d/b$1;

    const-class v1, Lcn/cmgame/sdk/d/b;

    const-string v2, "response"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/sdk/d/b$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "status"

    new-instance v3, Lcn/cmgame/sdk/d/b$2;

    invoke-direct {v3}, Lcn/cmgame/sdk/d/b$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "message"

    new-instance v3, Lcn/cmgame/sdk/d/b$3;

    invoke-direct {v3}, Lcn/cmgame/sdk/d/b$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/sdk/d/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/sdk/d/b;->iv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/cmgame/sdk/d/b;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/cmgame/sdk/d/b;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/cmgame/sdk/d/b;->iv:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcn/cmgame/sdk/d/b;->status:I

    .line 27
    return-void
.end method
