.class Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;
.super Ljava/lang/Thread;


# instance fields
.field private final _$1:Lcom/infinit/multimode_billig/log/LogNet;

.field private final _$2:Ljava/lang/String;

.field private final _$3:Ljava/lang/String;

.field private final _$4:Ljava/lang/String;

.field private final _$5:Lcom/infinit/multimode_billig/log/LogNet$LogResult;


# direct methods
.method constructor <init>(Lcom/infinit/multimode_billig/log/LogNet;Lcom/infinit/multimode_billig/log/LogNet$LogResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$1:Lcom/infinit/multimode_billig/log/LogNet;

    iput-object p2, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$5:Lcom/infinit/multimode_billig/log/LogNet$LogResult;

    iput-object p3, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$4:Ljava/lang/String;

    iput-object p4, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$5:Lcom/infinit/multimode_billig/log/LogNet$LogResult;

    invoke-static {}, Lcom/infinit/multimode_billig/log/LogSocket;->getInstance()Lcom/infinit/multimode_billig/log/LogSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$4:Ljava/lang/String;

    iget-object v3, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/infinit/multimode_billig/log/IIlllIIIllIlIllI;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/infinit/multimode_billig/log/LogSocket;->UpLoadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/infinit/multimode_billig/log/LogNet$LogResult;->onComplete(Z)V

    return-void
.end method
