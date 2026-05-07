.class public Lsafiap/framework/CheckUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckUpdateReceiver.java"


# static fields
.field public static final ACTION_CANCEL_NOTIFICATION:Ljava/lang/String; = "safiap.framework.ACTION_CANCEL_NOTIFICATION"

.field public static final ACTION_GET_SHARED_DATA_V2:Ljava/lang/String; = "safiap.GET_SHARED_DATA_V2"

.field public static final ACTION_SET_TIMER:Ljava/lang/String; = "safiap.framework.ACTION_SET_TIMER"

.field public static KEY_SENDER_PACKAGE:Ljava/lang/String;

.field public static KEY_UPDATE_ITEM_COUNT:Ljava/lang/String;

.field public static KEY_UPDATE_TYPE:Ljava/lang/String;


# instance fields
.field private logger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "safiap.framework.KEY_SENDER_PACKAGE"

    sput-object v0, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    .line 20
    const-string v0, "safiap.framework.CheckUpdateReceiver.KEY_UPDATE_ITEM_COUNT"

    sput-object v0, Lsafiap/framework/CheckUpdateReceiver;->KEY_UPDATE_ITEM_COUNT:Ljava/lang/String;

    .line 21
    const-string v0, "safiap.framework.CheckUpdateReceiver.KEY_UPDATE_TYPE"

    sput-object v0, Lsafiap/framework/CheckUpdateReceiver;->KEY_UPDATE_TYPE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    .line 12
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/CheckUpdateReceiver;)Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v12, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onReceive: Context: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "action":Ljava/lang/String;
    iget-object v12, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "action: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v12, "safiap.framework.ACTION_CANCEL_NOTIFICATION"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 31
    iget-object v12, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    const-string v13, "check update for GetPluginInfo()"

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 33
    sget-object v12, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    .local v10, "sender":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "myPackage":Ljava/lang/String;
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 45
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lsafiap/framework/SafFrameworkManager;->setUpdateNotification(Landroid/content/Context;II)V

    .line 46
    const-string v12, "iap"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Lsafiap/framework/SafFrameworkManager;->sendIntallNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v6    # "myPackage":Ljava/lang/String;
    .end local v10    # "sender":Ljava/lang/String;
    :cond_2
    const-string v12, "safiap.GET_SHARED_DATA_V2"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 53
    sget-object v12, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_PORT:Ljava/lang/String;

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 54
    .local v3, "dataPort":I
    sget-object v12, Lsafiap/framework/data/SharedDataManager;->KEY_DATA_NAME:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "dataName":Ljava/lang/String;
    sget-object v12, Lsafiap/framework/data/SharedDataManager;->KEY_PID:Ljava/lang/String;

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 57
    .local v8, "pid":I
    iget-object v12, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "seeker is seeking: dataName: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataPort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 58
    if-ltz v8, :cond_0

    if-ltz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 64
    .local v7, "myPid":I
    if-eq v7, v8, :cond_0

    .line 69
    new-instance v4, Lsafiap/framework/data/SharedDataManager;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lsafiap/framework/data/SharedDataManager;-><init>(Landroid/content/Context;)V

    .line 70
    .local v4, "manager":Lsafiap/framework/data/SharedDataManager;
    new-instance v12, Lsafiap/framework/CheckUpdateReceiver$1;

    invoke-direct {v12, p0, v4, v2, v3}, Lsafiap/framework/CheckUpdateReceiver$1;-><init>(Lsafiap/framework/CheckUpdateReceiver;Lsafiap/framework/data/SharedDataManager;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v8, v3, v0, v12}, Lsafiap/framework/data/SharedDataManager;->checkPeerValidation(IILandroid/content/Context;Lsafiap/framework/data/SharedDataManager$IOnGotPeerValidationListener;)V

    goto/16 :goto_0

    .line 100
    .end local v2    # "dataName":Ljava/lang/String;
    .end local v3    # "dataPort":I
    .end local v4    # "manager":Lsafiap/framework/data/SharedDataManager;
    .end local v7    # "myPid":I
    .end local v8    # "pid":I
    :cond_3
    const-string v12, "safiap.framework.ACTION_SET_TIMER"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 102
    sget-object v12, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "pkgName":Ljava/lang/String;
    sget-object v12, Lsafiap/framework/CheckUpdateReceiver;->KEY_UPDATE_ITEM_COUNT:Ljava/lang/String;

    sget v13, Lsafiap/framework/util/UpdateAlarm;->MIN_UPDATE_FREQUENCY:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 105
    .local v5, "minutes":I
    iget-object v12, p0, Lsafiap/framework/CheckUpdateReceiver;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "get pkgName: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", minutes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 108
    if-gez v5, :cond_4

    .line 110
    new-instance v11, Landroid/content/Intent;

    const-string v12, "safiap.framework.ACTION_CHECK_UPDATE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v11, "serviceIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 115
    .end local v11    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lsafiap/framework/util/UpdateAlarm;->setAlarmByMinutes(Landroid/content/Context;I)Z

    goto/16 :goto_0

    .line 118
    :cond_5
    invoke-static/range {p1 .. p1}, Lsafiap/framework/util/UpdateAlarm;->cancelAlarm(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
