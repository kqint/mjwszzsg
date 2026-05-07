.class Lcn/cmgame/sdk/d/b$1;
.super Lcn/cmgame/sdk/c/b;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/d/b;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcn/cmgame/sdk/c/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public aD()Lcn/cmgame/sdk/c/a;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcn/cmgame/sdk/d/b;

    invoke-direct {v0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-object v0
.end method
