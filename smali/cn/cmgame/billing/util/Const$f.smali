.class public final enum Lcn/cmgame/billing/util/Const$f;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/util/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/cmgame/billing/util/Const$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gE:Lcn/cmgame/billing/util/Const$f;

.field public static final enum gF:Lcn/cmgame/billing/util/Const$f;

.field public static final enum gG:Lcn/cmgame/billing/util/Const$f;

.field public static final enum gH:Lcn/cmgame/billing/util/Const$f;

.field private static final synthetic gI:[Lcn/cmgame/billing/util/Const$f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v0, Lcn/cmgame/billing/util/Const$f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/util/Const$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    new-instance v0, Lcn/cmgame/billing/util/Const$f;

    const-string v1, "DISCOUNT"

    invoke-direct {v0, v1, v3}, Lcn/cmgame/billing/util/Const$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    new-instance v0, Lcn/cmgame/billing/util/Const$f;

    const-string v1, "PROMOTION"

    invoke-direct {v0, v1, v4}, Lcn/cmgame/billing/util/Const$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/cmgame/billing/util/Const$f;->gG:Lcn/cmgame/billing/util/Const$f;

    new-instance v0, Lcn/cmgame/billing/util/Const$f;

    const-string v1, "DIS_PRO"

    invoke-direct {v0, v1, v5}, Lcn/cmgame/billing/util/Const$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/cmgame/billing/util/Const$f;->gH:Lcn/cmgame/billing/util/Const$f;

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/cmgame/billing/util/Const$f;

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    aput-object v1, v0, v2

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    aput-object v1, v0, v3

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gG:Lcn/cmgame/billing/util/Const$f;

    aput-object v1, v0, v4

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gH:Lcn/cmgame/billing/util/Const$f;

    aput-object v1, v0, v5

    sput-object v0, Lcn/cmgame/billing/util/Const$f;->gI:[Lcn/cmgame/billing/util/Const$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/cmgame/billing/util/Const$f;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/cmgame/billing/util/Const$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/util/Const$f;

    return-object v0
.end method

.method public static values()[Lcn/cmgame/billing/util/Const$f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/cmgame/billing/util/Const$f;->gI:[Lcn/cmgame/billing/util/Const$f;

    array-length v1, v0

    new-array v2, v1, [Lcn/cmgame/billing/util/Const$f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
