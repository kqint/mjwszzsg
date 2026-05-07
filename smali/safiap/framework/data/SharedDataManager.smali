.class public Lsafiap/framework/data/SharedDataManager;
.super Ljava/lang/Object;
.source "SharedDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;,
        Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;,
        Lsafiap/framework/data/SharedDataManager$PeerCheckListener;
    }
.end annotation


# static fields
.field private static final ADDR:Ljava/lang/String; = "127.0.0.1"

.field public static KEY_DATA_NAME:Ljava/lang/String; = null

.field public static KEY_DATA_PORT:Ljava/lang/String; = null

.field public static KEY_PID:Ljava/lang/String; = null

.field public static KEY_SHARED_DATA:Ljava/lang/String; = null

.field public static final MSG_GET_MESSAGE_V2:I = 0x4e21

.field public static final MSG_TIME_OUT_V2:I = 0x4e20

.field public static final PEER_INVALIDE:I = 0x7d0

.field public static final PEER_VALIDE:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "SharedDataManager"

.field private static TIME_OUT:I

.field private static logger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaiting:Z

.field private mIsWaitingV2:Z

.field private mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x2710

    sput v0, Lsafiap/framework/data/SharedDataManager;->TIME_OUT:I

    .line 42
    const-string v0, "safiap.framework.data.KEY_SHARED_DATA"

    sput-object v0, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_PORT:Ljava/lang/String;

    .line 43
    const-string v0, "safiap.framework.data.KEY_DATA_NAME"

    sput-object v0, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "safiap.framework.data.KEY_SHARED_DATA"

    sput-object v0, Lsafiap/framework/data/SharedDataManager;->KEY_SHARED_DATA:Ljava/lang/String;

    .line 45
    const-string v0, "safiap.framework.KEY_PID"

    sput-object v0, Lsafiap/framework/data/SharedDataManager;->KEY_PID:Ljava/lang/String;

    .line 574
    const-string v0, "SharedDataManager"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object v1, p0, Lsafiap/framework/data/SharedDataManager;->mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    .line 49
    iput-boolean v0, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaiting:Z

    .line 50
    iput-boolean v0, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaitingV2:Z

    .line 224
    new-instance v0, Lsafiap/framework/data/SharedDataManager$1;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SharedDataManager$1;-><init>(Lsafiap/framework/data/SharedDataManager;)V

    iput-object v0, p0, Lsafiap/framework/data/SharedDataManager;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Lsafiap/framework/data/SharedDataManager$2;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SharedDataManager$2;-><init>(Lsafiap/framework/data/SharedDataManager;)V

    iput-object v0, p0, Lsafiap/framework/data/SharedDataManager;->mTimerHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$0()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lsafiap/framework/data/SharedDataManager;->getMsgHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lsafiap/framework/data/SharedDataManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lsafiap/framework/data/SharedDataManager;->getMsgBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lsafiap/framework/data/SharedDataManager;)Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager;->mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    return-object v0
.end method

.method static synthetic access$5(Lsafiap/framework/data/SharedDataManager;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaitingV2:Z

    return-void
.end method

.method private checkPidWithPort(II)Z
    .locals 28
    .param p1, "pid"    # I
    .param p2, "port"    # I

    .prologue
    .line 322
    sget-object v24, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "checkSharedDataSeeker...start, pid: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", port: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 323
    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 322
    invoke-virtual/range {v24 .. v25}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 324
    new-instance v8, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "/proc/"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/net/tcp6"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v8, "f":Ljava/io/File;
    sget-object v24, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "path: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", file exist? "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 326
    const-string v26, ", file length: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 325
    invoke-virtual/range {v24 .. v25}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 328
    sget-object v24, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v25, "check file does not exist"

    invoke-virtual/range {v24 .. v25}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 329
    const/16 v24, 0x0

    .line 415
    :goto_0
    return v24

    .line 332
    :cond_0
    const/4 v9, 0x0

    .line 333
    .local v9, "fis":Ljava/io/FileInputStream;
    const/16 v24, 0x2800

    move/from16 v0, v24

    new-array v3, v0, [B

    .line 336
    .local v3, "buffer":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    const/16 v24, 0x0

    const/16 v25, 0x2800

    :try_start_1
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v3, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 339
    .local v14, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v4, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-gtz v14, :cond_2

    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "content":Ljava/lang/String;
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v24, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v21, "token":Ljava/util/StringTokenizer;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 351
    .local v19, "temp":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 352
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v24

    if-nez v24, :cond_3

    move-object v9, v10

    .line 415
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "content":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "len":I
    .end local v19    # "temp":Ljava/lang/String;
    .end local v21    # "token":Ljava/util/StringTokenizer;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :goto_2
    const/16 v24, 0x0

    goto :goto_0

    .line 341
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "len":I
    :cond_2
    new-instance v16, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v3, v1, v14}, Ljava/lang/String;-><init>([BII)V

    .line 342
    .local v16, "strBuf":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const/16 v24, 0x0

    const/16 v25, 0x2800

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v3, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    goto :goto_1

    .line 353
    .end local v16    # "strBuf":Ljava/lang/String;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v19    # "temp":Ljava/lang/String;
    .restart local v21    # "token":Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 354
    new-instance v22, Ljava/util/StringTokenizer;

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v22, "token2":Ljava/util/StringTokenizer;
    const/16 v20, 0x0

    .line 357
    .local v20, "temp2":Ljava/lang/String;
    const/4 v11, 0x0

    .line 358
    .local v11, "i":I
    const/4 v11, 0x0

    :goto_3
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v11, v0, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v24

    if-nez v24, :cond_5

    .line 362
    :cond_4
    const/16 v24, 0x2

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    .line 366
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v24, ":"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v23, "token3":Ljava/util/StringTokenizer;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 369
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 371
    .local v17, "strIP":Ljava/lang/String;
    const/4 v15, 0x1

    .line 372
    .local v15, "rst":Z
    const/4 v12, 0x0

    .local v12, "ind":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v12, v0, :cond_6

    .line 382
    :goto_5
    if-eqz v15, :cond_1

    .line 386
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 387
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 390
    .local v18, "strPort":Ljava/lang/String;
    sget-object v24, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "ip: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", port: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 393
    const-string v24, "0x"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 392
    .end local v18    # "strPort":Ljava/lang/String;
    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 395
    .local v13, "intPort":I
    sget-object v24, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "intPort: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 396
    if-lez v13, :cond_1

    move/from16 v0, p2

    if-ne v13, v0, :cond_1

    .line 397
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 359
    .end local v12    # "ind":I
    .end local v13    # "intPort":I
    .end local v15    # "rst":Z
    .end local v17    # "strIP":Ljava/lang/String;
    .end local v23    # "token3":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 358
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 373
    .restart local v12    # "ind":I
    .restart local v15    # "rst":Z
    .restart local v17    # "strIP":Ljava/lang/String;
    .restart local v23    # "token3":Ljava/util/StringTokenizer;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 374
    .local v5, "c":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-le v5, v0, :cond_7

    const/16 v24, 0x39

    move/from16 v0, v24

    if-le v5, v0, :cond_9

    .line 375
    :cond_7
    const/16 v24, 0x61

    move/from16 v0, v24

    if-lt v5, v0, :cond_8

    const/16 v24, 0x66

    move/from16 v0, v24

    if-le v5, v0, :cond_9

    .line 376
    :cond_8
    const/16 v24, 0x41

    move/from16 v0, v24

    if-lt v5, v0, :cond_a

    const/16 v24, 0x46

    move/from16 v0, v24

    if-gt v5, v0, :cond_a

    .line 377
    :cond_9
    const/4 v15, 0x0

    .line 378
    goto/16 :goto_5

    .line 372
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 393
    .end local v5    # "c":C
    .restart local v18    # "strPort":Ljava/lang/String;
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "0x"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    goto :goto_6

    .line 408
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "content":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "i":I
    .end local v12    # "ind":I
    .end local v14    # "len":I
    .end local v15    # "rst":Z
    .end local v17    # "strIP":Ljava/lang/String;
    .end local v18    # "strPort":Ljava/lang/String;
    .end local v19    # "temp":Ljava/lang/String;
    .end local v20    # "temp2":Ljava/lang/String;
    .end local v21    # "token":Ljava/util/StringTokenizer;
    .end local v22    # "token2":Ljava/util/StringTokenizer;
    .end local v23    # "token3":Ljava/util/StringTokenizer;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 409
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_7
    const-string v24, "SharedDataManager"

    const-string v25, "SAF-A Exception:570007"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 411
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 412
    .local v7, "e":Ljava/io/IOException;
    :goto_8
    const-string v24, "SharedDataManager"

    const-string v25, "SAF-A Exception:570006"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 411
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 408
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "len":I
    .restart local v19    # "temp":Ljava/lang/String;
    .restart local v21    # "token":Ljava/util/StringTokenizer;
    :cond_c
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private getMsgBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMsgHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPackageWithPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 419
    if-lez p2, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object v3

    .line 424
    :cond_1
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    check-cast v0, Landroid/app/ActivityManager;

    .line 425
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 427
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 428
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_2

    .line 429
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSharedDataSeekerPkgName(II)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I
    .param p2, "port"    # I

    .prologue
    .line 460
    sget-object v0, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkSharedDataSeeker...start, pid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 461
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, p1, p2}, Lsafiap/framework/data/SharedDataManager;->checkPidWithPort(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lsafiap/framework/data/SharedDataManager;->getPackageWithPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkPeerValidation(IILandroid/content/Context;Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "port"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listener"    # Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;

    .prologue
    const/16 v10, 0x7d0

    .line 472
    if-nez p4, :cond_0

    .line 507
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-direct {p0, p1, p2}, Lsafiap/framework/data/SharedDataManager;->getSharedDataSeekerPkgName(II)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 479
    invoke-interface {p4, v10}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    goto :goto_0

    .line 484
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v9, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 487
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 489
    .local v0, "FrameworkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 490
    .local v7, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_2

    .line 499
    :goto_2
    if-nez v7, :cond_4

    .line 500
    invoke-interface {p4, v10}, Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;->peerValidation(I)V

    goto :goto_0

    .line 491
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 492
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 493
    .local v4, "packagename":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    const/4 v7, 0x1

    .line 495
    goto :goto_2

    .line 490
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packagename":Ljava/lang/String;
    :cond_4
    new-instance v8, Lsafiap/framework/UpdateManager;

    invoke-direct {v8, p3}, Lsafiap/framework/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 506
    .local v8, "updateManager":Lsafiap/framework/UpdateManager;
    new-instance v9, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;

    invoke-direct {v9, p0, v5, p4}, Lsafiap/framework/data/SharedDataManager$PeerCheckListener;-><init>(Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;)V

    invoke-virtual {v8, v5, v9}, Lsafiap/framework/UpdateManager;->startQueryApkAuthTask(Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    goto :goto_0
.end method

.method public getDataByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "dataName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 146
    sget-object v10, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getDataByName...start, dataName: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 148
    iget-object v10, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "path":Ljava/lang/String;
    sget-object v10, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "path: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 156
    sget-object v10, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file does not exist: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move-object v6, v9

    .line 183
    :goto_0
    return-object v6

    .line 160
    :cond_0
    const/4 v4, 0x0

    .line 161
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    .line 164
    .local v0, "data":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 166
    .local v8, "rstSize":I
    new-instance v6, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v6, v0, v10, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .local v6, "msg":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SharedDataManager"

    const-string v10, "SAF-A Exception:570003"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v8    # "rstSize":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v10, "SharedDataManager"

    const-string v11, "SAF-A Exception:570002"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v6, v9

    .line 183
    goto :goto_0

    .line 177
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "SharedDataManager"

    const-string v11, "SAF-A Exception:570003"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 172
    .local v3, "e2":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v10, "SharedDataManager"

    const-string v11, "SAF-A Exception:570001"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 177
    :catch_4
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SharedDataManager"

    const-string v11, "SAF-A Exception:570003"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 176
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 181
    :goto_5
    throw v9

    .line 177
    :catch_5
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SharedDataManager"

    const-string v11, "SAF-A Exception:570003"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 171
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 168
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getSharedData(Ljava/lang/String;ILsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "timeOut"    # I
    .param p3, "listener"    # Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    .prologue
    .line 58
    sget-object v5, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v6, "getSharedDataV2...start"

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-object p3, p0, Lsafiap/framework/data/SharedDataManager;->mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    .line 66
    invoke-virtual {p0, p1}, Lsafiap/framework/data/SharedDataManager;->getDataByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mListenerV2:Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    const-string v6, "suc"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;->onGotSharedData(Ljava/lang/String;[B)I

    goto :goto_0

    .line 75
    :cond_2
    new-instance v4, Lsafiap/framework/data/ShareDataServerSocket;

    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lsafiap/framework/data/ShareDataServerSocket;-><init>(Landroid/os/Handler;)V

    .line 76
    .local v4, "server":Lsafiap/framework/data/ShareDataServerSocket;
    invoke-virtual {v4}, Lsafiap/framework/data/ShareDataServerSocket;->getPort()I

    move-result v3

    .line 78
    .local v3, "port":I
    if-lez v3, :cond_0

    .line 79
    iget-boolean v5, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaitingV2:Z

    if-nez v5, :cond_3

    .line 81
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lsafiap/framework/data/SharedDataManager$3;

    invoke-direct {v6, p0, v3, v4}, Lsafiap/framework/data/SharedDataManager$3;-><init>(Lsafiap/framework/data/SharedDataManager;ILsafiap/framework/data/ShareDataServerSocket;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 88
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaitingV2:Z

    .line 90
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 91
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x4e20

    iput v5, v2, Landroid/os/Message;->what:I

    .line 92
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 94
    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mTimerHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 95
    sget v8, Lsafiap/framework/data/SharedDataManager;->TIME_OUT:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 94
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 98
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "safiap.GET_SHARED_DATA_V2"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_PORT:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    sget-object v5, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_NAME:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v5, Lsafiap/framework/data/SharedDataManager;->KEY_PID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v5, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getSharedData(Ljava/lang/String;Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "listener"    # Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    .prologue
    .line 108
    sget v0, Lsafiap/framework/data/SharedDataManager;->TIME_OUT:I

    invoke-virtual {p0, p1, v0, p2}, Lsafiap/framework/data/SharedDataManager;->getSharedData(Ljava/lang/String;ILsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V

    .line 109
    return-void
.end method

.method public sendSharedData(ILjava/lang/String;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSharedDataV2..start, original message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 113
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsafiap/framework/data/SharedDataManager$4;

    invoke-direct {v1, p0, p1, p2}, Lsafiap/framework/data/SharedDataManager$4;-><init>(Lsafiap/framework/data/SharedDataManager;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setDataByName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 187
    sget-object v7, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setDataByName...start, dataName: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 188
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 189
    if-nez p2, :cond_0

    .line 221
    :goto_0
    return v6

    .line 193
    :cond_0
    iget-object v7, p0, Lsafiap/framework/data/SharedDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "path":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "dataFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 199
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 200
    sget-object v7, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dataFile.path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 201
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 203
    .local v0, "dataBytes":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 205
    sget-object v7, Lsafiap/framework/data/SharedDataManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v8, "write file successful"

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x0

    iput-boolean v7, p0, Lsafiap/framework/data/SharedDataManager;->mIsWaiting:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "SharedDataManager"

    const-string v7, "SAF-A Exception:570005"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v0    # "dataBytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "SharedDataManager"

    const-string v8, "SAF-A Exception:570004"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 216
    :catch_2
    move-exception v2

    .line 217
    const-string v7, "SharedDataManager"

    const-string v8, "SAF-A Exception:570005"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 215
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 220
    :goto_4
    throw v6

    .line 216
    :catch_3
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SharedDataManager"

    const-string v8, "SAF-A Exception:570005"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 209
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
