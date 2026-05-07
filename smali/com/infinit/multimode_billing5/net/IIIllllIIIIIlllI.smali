.class Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;
.super Ljava/lang/Thread;


# instance fields
.field private final _$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

.field private final _$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

.field private final _$3:Ljava/lang/String;

.field private final _$4:Lcom/infinit/multimode_billing5/net/Parameters;

.field private final _$5:Ljava/lang/String;

.field private final _$6:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/infinit/multimode_billing5/net/AsyncMultimode;Landroid/content/Context;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/Parameters;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iput-object p2, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$6:Landroid/content/Context;

    iput-object p3, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$5:Ljava/lang/String;

    iput-object p4, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$4:Lcom/infinit/multimode_billing5/net/Parameters;

    iput-object p5, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$3:Ljava/lang/String;

    iput-object p6, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    invoke-static {v0}, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$2(Lcom/infinit/multimode_billing5/net/AsyncMultimode;)Lcom/infinit/multimode_billing5/net/HttpNet;

    move-result-object v0

    iget-object v1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$6:Landroid/content/Context;

    iget-object v2, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$5:Ljava/lang/String;

    iget-object v3, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$4:Lcom/infinit/multimode_billing5/net/Parameters;

    iget-object v4, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infinit/multimode_billing5/net/HttpNet;->request(Landroid/content/Context;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/Parameters;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    invoke-interface {v1, v0}, Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;->onError(Ljava/lang/Exception;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$1(Lcom/infinit/multimode_billing5/net/AsyncMultimode;)Lcom/infinit/MultimodeBilling/tools/MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infinit/MultimodeBilling/tools/MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    invoke-interface {v1, v0}, Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;->onError(Ljava/lang/Exception;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x12f

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/infinit/multimode_billing5/net/IIIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->_$1(Lcom/infinit/multimode_billing5/net/AsyncMultimode;)Lcom/infinit/MultimodeBilling/tools/MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infinit/MultimodeBilling/tools/MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
