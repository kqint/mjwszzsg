.class public Lmm/purchasesdk/core/h/d;
.super Ljava/lang/Object;


# instance fields
.field private final LEFTDAY:Ljava/lang/String;

.field private final ORDERID:Ljava/lang/String;

.field private final ORDERTYPE:Ljava/lang/String;

.field private final PAYCODE:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private final TRADEID:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private final aA:Ljava/lang/String;

.field private final aB:Ljava/lang/String;

.field private final aC:Ljava/lang/String;

.field private final aD:Ljava/lang/String;

.field private final aE:Ljava/lang/String;

.field private final aF:Ljava/lang/String;

.field private final aG:Ljava/lang/String;

.field private final aH:Ljava/lang/String;

.field private final aI:Ljava/lang/String;

.field private final aJ:Ljava/lang/String;

.field private final aK:Ljava/lang/String;

.field private final aL:Ljava/lang/String;

.field private final aM:Ljava/lang/String;

.field private final aN:Ljava/lang/String;

.field private aO:Ljava/lang/String;

.field private aP:Ljava/lang/String;

.field private aQ:Ljava/lang/String;

.field private aR:Ljava/lang/String;

.field private aS:Ljava/lang/String;

.field private aT:Ljava/lang/String;

.field private aU:Ljava/lang/String;

.field private aV:Ljava/lang/String;

.field private aW:Ljava/lang/String;

.field private aX:Ljava/lang/String;

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private final av:Ljava/lang/String;

.field private final aw:Ljava/lang/String;

.field private final ax:Ljava/lang/String;

.field private final ay:Ljava/lang/String;

.field private final az:Ljava/lang/String;

.field private ba:Ljava/lang/String;

.field private bb:Ljava/lang/String;

.field private bc:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private n:I

.field private n:Ljava/lang/String;

.field private o:I

.field private o:Z

.field private p:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "APPID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->av:Ljava/lang/String;

    const-string v0, "APPKEY"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aw:Ljava/lang/String;

    const-string v0, "PAYCODE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->PAYCODE:Ljava/lang/String;

    const-string v0, "PROGRAMID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ax:Ljava/lang/String;

    const-string v0, "STACKMARK"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ay:Ljava/lang/String;

    const-string v0, "ORDERCOUNT"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->az:Ljava/lang/String;

    const-string v0, "NEXTCYCLE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aA:Ljava/lang/String;

    const-string v0, "TRADEID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->TRADEID:Ljava/lang/String;

    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aB:Ljava/lang/String;

    const-string v0, "TRADEIDQUERY"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aC:Ljava/lang/String;

    const-string v0, "PURCHASECODE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aD:Ljava/lang/String;

    const-string v0, "COPYRIGHTCERT"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aE:Ljava/lang/String;

    const-string v0, "CHANNELID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aF:Ljava/lang/String;

    const-string v0, "LEFTDAY"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->LEFTDAY:Ljava/lang/String;

    const-string v0, "ORDERID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ORDERID:Ljava/lang/String;

    const-string v0, "ORDERTYPE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ORDERTYPE:Ljava/lang/String;

    const-string v0, "SESSESIONID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aG:Ljava/lang/String;

    const-string v0, "CERTCONTENT"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aH:Ljava/lang/String;

    const-string v0, "APKPATH"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aI:Ljava/lang/String;

    const-string v0, "VERSION"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->VERSION:Ljava/lang/String;

    const-string v0, "CLASSESHA1"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aJ:Ljava/lang/String;

    const-string v0, "USERDATA"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aK:Ljava/lang/String;

    const-string v0, "MESSAGE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aL:Ljava/lang/String;

    const-string v0, "PACKAGE"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aM:Ljava/lang/String;

    const-string v0, "TASKID"

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aN:Ljava/lang/String;

    iput-boolean v1, p0, Lmm/purchasesdk/core/h/d;->o:Z

    iput-boolean v1, p0, Lmm/purchasesdk/core/h/d;->p:Z

    iput v1, p0, Lmm/purchasesdk/core/h/d;->p:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aT:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aU:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->ad:Ljava/lang/String;

    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aP:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aP:Ljava/lang/String;

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aZ:Ljava/lang/String;

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aY:Ljava/lang/String;

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aX:Ljava/lang/String;

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->ar:Ljava/lang/String;

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aW:Ljava/lang/String;

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aT:Ljava/lang/String;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aU:Ljava/lang/String;

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->n:Ljava/lang/String;

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aO:Ljava/lang/String;

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->ai:Ljava/lang/String;

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aQ:Ljava/lang/String;

    return-void
.end method

.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "APPID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APPKEY"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PAYCODE"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PROGRAMID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "STACKMARK"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERCOUNT"

    iget v2, p0, Lmm/purchasesdk/core/h/d;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "NEXTCYCLE"

    iget-boolean v2, p0, Lmm/purchasesdk/core/h/d;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "TRADEID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TIMESTAMP"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TRADEIDQUERY"

    iget-boolean v2, p0, Lmm/purchasesdk/core/h/d;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "PURCHASECODE"

    iget v2, p0, Lmm/purchasesdk/core/h/d;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "COPYRIGHTCERT"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CHANNELID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LEFTDAY"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERTYPE"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CERTCONTENT"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APKPATH"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->ba:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VERSION"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CLASSESHA1"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "USERDATA"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MESSAGE"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PACKAGE"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TASKID"

    iget-object v2, p0, Lmm/purchasesdk/core/h/d;->aZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/h/d;->n:I

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "APPID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->n:Ljava/lang/String;

    const-string v0, "APPKEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aO:Ljava/lang/String;

    const-string v0, "PAYCODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aP:Ljava/lang/String;

    const-string v0, "PROGRAMID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ai:Ljava/lang/String;

    const-string v0, "STACKMARK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aQ:Ljava/lang/String;

    const-string v0, "ORDERCOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/h/d;->n:I

    const-string v0, "NEXTCYCLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/core/h/d;->o:Z

    const-string v0, "TRADEIDQUERY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/core/h/d;->p:Z

    const-string v0, "PURCHASECODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/h/d;->o:I

    const-string v0, "TRADEID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aR:Ljava/lang/String;

    const-string v0, "TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aS:Ljava/lang/String;

    const-string v0, "CHANNELID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aU:Ljava/lang/String;

    const-string v0, "COPYRIGHTCERT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    const-string v0, "ORDERID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aT:Ljava/lang/String;

    const-string v0, "LEFTDAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->S:Ljava/lang/String;

    const-string v0, "ORDERTYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ad:Ljava/lang/String;

    const-string v0, "CERTCONTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aV:Ljava/lang/String;

    const-string v0, "APKPATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->ba:Ljava/lang/String;

    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->bb:Ljava/lang/String;

    const-string v0, "CLASSESHA1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aX:Ljava/lang/String;

    const-string v0, "USERDATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aY:Ljava/lang/String;

    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->mMessage:Ljava/lang/String;

    const-string v0, "PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->mPackageName:Ljava/lang/String;

    const-string v0, "TASKID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/d;->aZ:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/h/d;->o:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/h/d;->o:Z

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/h/d;->n:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/h/d;->p:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->S:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/h/d;->o:I

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/h/d;->o:Z

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->bc:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aS:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->bb:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->bb:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aR:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->S:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aR:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/h/d;->p:I

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/d;->aS:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/d;->aY:Ljava/lang/String;

    return-object v0
.end method
