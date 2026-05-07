.class public Lmm/purchasesdk/core/h/g;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private bd:Ljava/lang/String;

.field private be:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/h/g;->bd:Ljava/lang/String;

    iput-object v0, p0, Lmm/purchasesdk/core/h/g;->N:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/g;->bd:Ljava/lang/String;

    return-object v0
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/g;->bd:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lmm/purchasesdk/core/h/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/g;->be:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/g;->N:Ljava/lang/String;

    return-object v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/g;->be:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/g;->N:Ljava/lang/String;

    return-void
.end method
