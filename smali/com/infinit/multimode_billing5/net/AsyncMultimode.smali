.class public Lcom/infinit/multimode_billing5/net/AsyncMultimode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;
    }
.end annotation


# instance fields
.field public BUF_SIZE:I

.field private _$1:Lcom/infinit/MultimodeBilling/tools/MyHandler;

.field private _$2:Lcom/infinit/multimode_billing5/net/HttpNet;


# direct methods
.method public constructor <init>(Lcom/infinit/multimode_billing5/net/HttpNet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->BUF_SIZE:I

    iput-object p1, p0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$2:Lcom/infinit/multimode_billing5/net/HttpNet;

    return-void
.end method

.method static _$1(Lcom/infinit/multimode_billing5/net/AsyncMultimode;)Lcom/infinit/MultimodeBilling/tools/MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$1:Lcom/infinit/MultimodeBilling/tools/MyHandler;

    return-object v0
.end method

.method static _$2(Lcom/infinit/multimode_billing5/net/AsyncMultimode;)Lcom/infinit/multimode_billing5/net/HttpNet;
    .locals 1

    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$2:Lcom/infinit/multimode_billing5/net/HttpNet;

    return-object v0
.end method


# virtual methods
.method public request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/Parameters;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V
    .locals 7

    new-instance v0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;-><init>(Lcom/infinit/multimode_billing5/net/AsyncMultimode;Landroid/content/Context;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/Parameters;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->start()V

    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V
    .locals 1

    new-instance v0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;-><init>(Lcom/infinit/multimode_billing5/net/AsyncMultimode;Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V

    invoke-virtual {v0}, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->start()V

    return-void
.end method
