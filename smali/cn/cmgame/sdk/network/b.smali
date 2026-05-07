.class public Lcn/cmgame/sdk/network/b;
.super Ljava/lang/Thread;
.source "NetThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetThread"

.field public static final hA:I = 0x1006

.field public static final hB:I = 0x1007

.field public static final hC:I = 0x1008

.field public static final hD:I = 0x1010

.field public static final hE:I = 0x1011

.field public static final hF:B = 0x0t

.field public static final hG:I = 0x1

.field public static final hH:I = 0x2

.field public static final hI:I = 0x4

.field public static final hJ:I = 0x8

.field public static final hK:I = 0x10

.field public static final hL:Ljava/lang/String; = "GET"

.field public static final hM:Ljava/lang/String; = "POST"

.field public static final hN:I = 0x3

.field public static final hO:I = 0x6

.field protected static final hP:I = 0x200

.field public static hQ:Ljava/lang/String; = null

.field private static hR:I = 0x0

.field private static hS:I = 0x0

.field private static hT:I = 0x0

.field private static hU:I = 0x0

.field private static final hu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/sdk/network/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final hv:I = 0x1001

.field public static final hw:I = 0x1002

.field public static final hx:I = 0x1003

.field public static final hy:I = 0x1004

.field public static final hz:I = 0x1005


# instance fields
.field private hV:I

.field protected hW:I

.field protected hX:Ljava/net/HttpURLConnection;

.field protected hY:I

.field protected hZ:Z

.field protected ia:I

.field protected ib:Ljava/lang/String;

.field protected ic:Ljava/lang/String;

.field protected ie:[B

.field protected if:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ig:[Ljava/lang/String;

.field protected ih:Ljava/lang/String;

.field protected ii:Ljava/lang/CharSequence;

.field protected ij:[B

.field private ik:Ljava/io/InputStream;

.field private il:Ljava/io/OutputStream;

.field public im:Ljava/lang/Object;

.field private in:I

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/cmgame/sdk/network/b;->hu:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcn/cmgame/sdk/network/b;->hQ:Ljava/lang/String;

    .line 111
    const/16 v0, 0x1388

    sput v0, Lcn/cmgame/sdk/network/b;->hR:I

    .line 114
    const/16 v0, 0x1f40

    sput v0, Lcn/cmgame/sdk/network/b;->hS:I

    .line 117
    const/16 v0, 0x3a98

    sput v0, Lcn/cmgame/sdk/network/b;->hT:I

    .line 120
    const/16 v0, 0x7d0

    sput v0, Lcn/cmgame/sdk/network/b;->hU:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 358
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcn/cmgame/sdk/network/b;->hV:I

    .line 148
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hW:I

    .line 151
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    .line 154
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hY:I

    .line 166
    iput-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    .line 203
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ib:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ic:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 243
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 283
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ig:[Ljava/lang/String;

    .line 296
    const-string v0, "GET"

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 338
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    .line 343
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    .line 348
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->im:Ljava/lang/Object;

    .line 356
    iput v3, p0, Lcn/cmgame/sdk/network/b;->in:I

    .line 359
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 360
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcn/cmgame/sdk/network/b;->hV:I

    .line 148
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hW:I

    .line 151
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    .line 154
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hY:I

    .line 166
    iput-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    .line 203
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ib:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ic:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 243
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 283
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ig:[Ljava/lang/String;

    .line 296
    const-string v0, "GET"

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 338
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    .line 343
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    .line 348
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->im:Ljava/lang/Object;

    .line 356
    iput v3, p0, Lcn/cmgame/sdk/network/b;->in:I

    .line 368
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 369
    iput-object p2, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 370
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Handler;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcn/cmgame/sdk/network/b;->hV:I

    .line 148
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hW:I

    .line 151
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    .line 154
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hY:I

    .line 166
    iput-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    .line 203
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ib:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ic:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 243
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 283
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ig:[Ljava/lang/String;

    .line 296
    const-string v0, "GET"

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 338
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    .line 343
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    .line 348
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->im:Ljava/lang/Object;

    .line 356
    iput v3, p0, Lcn/cmgame/sdk/network/b;->in:I

    .line 373
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 374
    iput-object p3, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 375
    iput-object p2, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 376
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcn/cmgame/sdk/network/b;->hV:I

    .line 148
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hW:I

    .line 151
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    .line 154
    iput v2, p0, Lcn/cmgame/sdk/network/b;->hY:I

    .line 166
    iput-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    .line 203
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ib:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ic:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 243
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 283
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ig:[Ljava/lang/String;

    .line 296
    const-string v0, "GET"

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 338
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    .line 343
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    .line 348
    iput-object v1, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->im:Ljava/lang/Object;

    .line 356
    iput v3, p0, Lcn/cmgame/sdk/network/b;->in:I

    .line 363
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 364
    iput-object p2, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 365
    return-void
.end method

.method public static final aM(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x1

    return v0
.end method

.method public static final di()V
    .locals 2

    .prologue
    .line 773
    sget-object v0, Lcn/cmgame/sdk/network/b;->hu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    sget-object v0, Lcn/cmgame/sdk/network/b;->hu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 778
    return-void

    .line 773
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/sdk/network/b;

    .line 774
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcn/cmgame/sdk/network/b;->stopSelf()V

    goto :goto_0
.end method

.method public static m(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x1388

    const/16 v1, 0x7d0

    .line 128
    if-eqz p0, :cond_0

    .line 129
    sput v1, Lcn/cmgame/sdk/network/b;->hR:I

    .line 130
    const/16 v0, 0xbb8

    sput v0, Lcn/cmgame/sdk/network/b;->hS:I

    .line 131
    sput v2, Lcn/cmgame/sdk/network/b;->hT:I

    .line 132
    const/4 v0, 0x0

    sput v0, Lcn/cmgame/sdk/network/b;->hU:I

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    sput v2, Lcn/cmgame/sdk/network/b;->hR:I

    .line 135
    const/16 v0, 0x1f40

    sput v0, Lcn/cmgame/sdk/network/b;->hS:I

    .line 136
    const/16 v0, 0x3a98

    sput v0, Lcn/cmgame/sdk/network/b;->hT:I

    .line 137
    sput v1, Lcn/cmgame/sdk/network/b;->hU:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    .line 253
    return-void
.end method

.method protected a(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 742
    move v0, v1

    .line 746
    :goto_0
    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    if-eqz v3, :cond_1

    .line 752
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 753
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 755
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 756
    return-void

    .line 747
    :cond_1
    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 748
    add-int/2addr v0, v2

    .line 749
    const/16 v2, 0x1007

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/io/OutputStream;Ljava/io/InputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 674
    move v0, v1

    .line 680
    :goto_0
    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    if-eqz v3, :cond_1

    .line 686
    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 688
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 689
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 691
    return-void

    .line 681
    :cond_1
    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 682
    add-int/2addr v0, v2

    .line 683
    const/16 v2, 0x1008

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v1

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-virtual {p0, v2, v3}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/io/OutputStream;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 711
    .line 715
    array-length v2, p2

    .line 717
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v0, v1

    .line 719
    :goto_0
    iget-object v4, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-boolean v5, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    if-eqz v5, :cond_1

    .line 725
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 726
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 728
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 729
    return-void

    .line 720
    :cond_1
    iget-object v5, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p1, v5, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 721
    add-int/2addr v0, v4

    .line 722
    const/16 v4, 0x1007

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v1

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    .line 333
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 260
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ig:[Ljava/lang/String;

    .line 293
    return-void
.end method

.method protected a(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 636
    .line 642
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    .line 644
    :goto_0
    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-boolean v4, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    if-eqz v4, :cond_1

    .line 650
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 651
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 653
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 655
    return-object v0

    .line 645
    :cond_1
    iget-object v4, p0, Lcn/cmgame/sdk/network/b;->ij:[B

    invoke-virtual {v2, v4, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 646
    add-int/2addr v0, v3

    .line 647
    const/16 v3, 0x1008

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public aK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ib:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public aL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ic:Ljava/lang/String;

    .line 226
    return-void
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 591
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 592
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v0, 0x1007

    if-eq p1, v0, :cond_0

    .line 600
    :cond_2
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v0, 0x1008

    if-eq p1, v0, :cond_0

    .line 603
    :cond_3
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcn/cmgame/sdk/network/b;->hY:I

    iget v2, p0, Lcn/cmgame/sdk/network/b;->hW:I

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 605
    const/16 v0, 0x1004

    if-ne p1, v0, :cond_5

    .line 606
    invoke-virtual {p0}, Lcn/cmgame/sdk/network/b;->dh()Ljava/util/Map;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 608
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 609
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 622
    :cond_5
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 609
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 611
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 612
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c([B)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    .line 238
    return-void
.end method

.method public dg()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    .line 385
    :cond_0
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    return-object v0
.end method

.method protected dh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcn/cmgame/sdk/network/b;->dg()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    return v0
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcn/cmgame/sdk/network/b;->hV:I

    .line 145
    return-void
.end method

.method public m(I)V
    .locals 2

    .prologue
    .line 187
    iput p1, p0, Lcn/cmgame/sdk/network/b;->ia:I

    .line 190
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 192
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 193
    invoke-virtual {p0}, Lcn/cmgame/sdk/network/b;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v2, 0x0

    const/16 v10, 0x1010

    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    const-string v0, "NetThread"

    const-string v2, "URL is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0, v10, v1}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 578
    :goto_0
    return-void

    .line 405
    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 406
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 407
    sget-object v0, Lcn/cmgame/sdk/network/b;->hu:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    move v4, v2

    .line 414
    :goto_1
    iget v0, p0, Lcn/cmgame/sdk/network/b;->hV:I

    if-ge v4, v0, :cond_2

    iget-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    if-eqz v0, :cond_4

    .line 569
    :cond_2
    const/4 v0, 0x2

    if-le v4, v0, :cond_3

    .line 570
    if-eqz v3, :cond_16

    .line 571
    const/16 v0, 0x1011

    invoke-virtual {p0, v0, v3}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 577
    :cond_3
    :goto_2
    sget-object v0, Lcn/cmgame/sdk/network/b;->hu:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 418
    if-lez v4, :cond_5

    .line 420
    :try_start_0
    sget v0, Lcn/cmgame/sdk/network/b;->hU:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_5
    :goto_3
    iget v0, p0, Lcn/cmgame/sdk/network/b;->in:I

    const/4 v2, 0x6

    if-le v0, v2, :cond_6

    .line 428
    invoke-virtual {p0, v10, v1}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 432
    check-cast v0, [B

    .line 435
    const/16 v0, 0x1001

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 436
    new-instance v5, Ljava/net/URL;

    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcn/cmgame/billing/api/a;->dF()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 440
    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 441
    new-instance v0, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://10.0.0.172"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 442
    if-eqz v2, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "?"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 446
    :goto_5
    const-string v2, "NetThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    .line 449
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_7
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 454
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->if:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 462
    :cond_9
    invoke-static {}, Lcn/cmgame/billing/api/a;->dF()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 463
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const-string v2, "X-Online-Host"

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_a
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    sget v2, Lcn/cmgame/sdk/network/b;->hR:I

    mul-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 472
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v11, :cond_b

    .line 473
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    .line 474
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    sget v2, Lcn/cmgame/sdk/network/b;->hS:I

    mul-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 477
    :cond_b
    iget v0, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-eq v0, v2, :cond_c

    .line 478
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    sget v2, Lcn/cmgame/sdk/network/b;->hT:I

    mul-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 480
    :cond_c
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 481
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 484
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 486
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    if-nez v0, :cond_d

    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 487
    :cond_d
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 488
    const/16 v0, 0x1002

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    .line 490
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->a(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 494
    :goto_7
    const/16 v0, 0x1006

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 496
    :cond_e
    const/16 v0, 0x1003

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 499
    const-string v2, "NetThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sparse-switch v0, :sswitch_data_0

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 550
    add-int/lit8 v2, v4, 0x1

    .line 559
    :goto_8
    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_18

    .line 561
    :try_start_2
    iget-object v3, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 562
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v0

    move v4, v2

    goto/16 :goto_1

    .line 442
    :cond_f
    :try_start_3
    const-string v2, ""

    goto/16 :goto_4

    :cond_10
    move-object v0, v5

    .line 444
    goto/16 :goto_5

    .line 455
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    iget-object v8, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 457
    iget-object v8, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 554
    :catch_1
    move-exception v0

    .line 556
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_8

    .line 492
    :cond_12
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->ie:[B

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->a(Ljava/io/OutputStream;[B)V

    goto :goto_7

    .line 503
    :sswitch_0
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 504
    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const-string v5, "Set-Cookie"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    if-eqz v2, :cond_13

    .line 506
    const/16 v5, 0x3b

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 507
    const/4 v6, -0x1

    if-le v5, v6, :cond_13

    .line 508
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/cmgame/sdk/network/b;->hQ:Ljava/lang/String;

    .line 512
    :cond_13
    iget v2, p0, Lcn/cmgame/sdk/network/b;->ia:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v11, :cond_14

    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    if-eqz v2, :cond_14

    .line 513
    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    iget-object v5, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    invoke-virtual {p0, v2, v0, v5}, Lcn/cmgame/sdk/network/b;->a(Ljava/io/OutputStream;Ljava/io/InputStream;I)V

    .line 516
    const/16 v0, 0x1005

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    .line 524
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    move-object v0, v3

    move v2, v4

    .line 525
    goto/16 :goto_8

    .line 518
    :cond_14
    iget-object v2, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 522
    const/16 v2, 0x1004

    invoke-virtual {p0, v2, v0}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto :goto_9

    .line 529
    :sswitch_1
    iget v0, p0, Lcn/cmgame/sdk/network/b;->in:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/cmgame/sdk/network/b;->in:I

    .line 530
    iget-object v0, p0, Lcn/cmgame/sdk/network/b;->hX:Ljava/net/HttpURLConnection;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_17

    .line 532
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_15

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "://"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 534
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    move-object v0, v3

    move v2, v4

    goto/16 :goto_8

    .line 536
    :cond_15
    iput-object v0, p0, Lcn/cmgame/sdk/network/b;->ii:Ljava/lang/CharSequence;

    move-object v0, v3

    move v2, v4

    .line 539
    goto/16 :goto_8

    .line 541
    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/cmgame/sdk/network/b;->hZ:Z

    .line 542
    const/16 v0, 0x1010

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 545
    :sswitch_3
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move-object v0, v3

    .line 546
    goto/16 :goto_8

    .line 563
    :catch_2
    move-exception v3

    move-object v3, v0

    move v4, v2

    goto/16 :goto_1

    .line 573
    :cond_16
    invoke-virtual {p0, v10, v1}, Lcn/cmgame/sdk/network/b;->b(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_17
    move-object v0, v3

    move v2, v4

    goto/16 :goto_8

    :cond_18
    move-object v3, v0

    move v4, v2

    goto/16 :goto_1

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcn/cmgame/sdk/network/b;->hY:I

    .line 164
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ik:Ljava/io/InputStream;

    .line 270
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->il:Ljava/io/OutputStream;

    .line 280
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcn/cmgame/sdk/network/b;->ih:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public stopSelf()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/cmgame/sdk/network/b;->m(I)V

    .line 698
    return-void
.end method
